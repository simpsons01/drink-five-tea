const isDev = process.env.VUE_APP_ENV === "development"

module.exports = {
  chainWebpack: config => {
    if(!isDev) {
      // delete output html
      config.plugins.delete('html')
      config.plugins.delete('preload')
      config.plugins.delete('prefetch')
    }
  },
  configureWebpack:{
    output: {
      filename: `[name].[${isDev ? 'hash' : 'contenthash'}].js`,
      chunkFilename: `[name].[${isDev ? 'hash' : 'contenthash'}].js`
    }
  },
  css: {
    extract: !isDev
  }
}