
var
  stir $ require :stir-template
  fs $ require :fs
  settings $ require :./tasks/settings
  ({}~ html head title meta link script body div style) stir

  logoUrl :http://logo.cirru.org/cirru-32x32.png
  call $ \ (f) (f)

  getConfig $ \ (env)
    case env
      :dev $ {}
        :main $ + config.host :: config.port :/main.js
        :style null
      :release $ call $ \ ()
        var assets $ require :./dist/assets
        {}
          :main assets.main.js
          :style null

console.log ":Running mode" process.env.env

var getHtml $ \ (env)
  var
    config $ settings.get env
    assets $ getConfig env

  stir.render
    , stir.doctype
    html null
      head null
        title null :Workflow
        meta $ {} :charset :utf-8
        link $ {} :rel :icon :href logoUrl
        cond (? assets.style)
          link $ {} :rel :stylesheet :href assets.style
        script $ {} :src assets.main :defer true
        div null ":body * {box-sizing: border-box;}"
      body ({} :style ":margin: 0;")
        div ({} :id :app)

var env :dev

if (is process.env.env :release)
  do
    = env :release

fs.writeFileSync :index.html (getHtml env)