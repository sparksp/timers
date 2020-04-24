module.exports = {
  content: [
    './dist/**/*.html',
    './dist/**/*.js'
  ],
  defaultExtractor: content => content.match(/[\w-/:]+(?<!:)/g) || []
}