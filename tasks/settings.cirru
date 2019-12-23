
= exports.get $ \ (env)
  case env
    :dev $ {}
      :env :dev
      :host :http://localhost
      :port 8080
    :release $ {}
      :env :release
      :host :http://localhost
      :port 8080
