
var
  path $ require :path
  webpack $ require :webpack
  webpackDev $ require :./webpack-dev

= module.exports
  {}
    :mode :production
    :entry $ {}
      :main $ [] :./src/main

    :output $ {}
      :path $ path.join __dirname :../dist/
      :filename :[name].[chunkhash:8].js

    :resolve webpackDev.resolve
    :module $ {}
      :rules $ []
        {} (:test /\.cirru$) (:loader :cirru-script-loader) (:exclude /node_modules)
        {} (:test "/\.(png|jpg)$") (:loader :url-loader)
          :query $ {} (:limit 100)
        {} (:test /\.css$) $ :loaders $ [] :style-loader :css-loader

    :plugins $ []
