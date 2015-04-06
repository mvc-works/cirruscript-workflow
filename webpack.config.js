
fs = require('fs');

module.exports = {
  entry: {
    main: [
      'webpack-dev-server/client?http://0.0.0.0:8080',
      'webpack/hot/dev-server',
      './src/main'
    ]
  },
  output: {
    path: 'build/',
    filename: '[name].js',
    publicPath: 'http://localhost:8080/build/'
  },
  resolve: {
    extensions: ['.js', '.cirru', '']
  },
  module: {
    loaders: [
      {test: /\.coffee$/, loader: 'coffee'},
      {test: /\.cirru$/, loader: 'cirru-script'}
    ]
  },
  plugins: []
}
