
var
  stir $ require :stir-template
  ({}~ html head title meta link script body div) stir

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null :Workflow
        meta $ {} (:charset :utf-8)
        link $ {} (:rel :icon)
          :href :http://logo.cirru.org/cirru-32x32.png
        cond (not data.dev)
          link $ {} (:rel :stylesheet)
            :href data.style
          , undefined
        script $ {} (:src data.vendor) (:defer true)
        script $ {} (:src data.main) (:defer true)
      body null
