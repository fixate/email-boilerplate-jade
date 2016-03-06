gulp         = require 'gulp'
watch        = require 'gulp-watch'

conf = require '../gulpconfig'

gulp.task 'watch', ['jade', 'browser-sync'], () ->
  global.isWatching = true

  gulp.watch "#{conf.path.src}/**/*.jade", ['jade:watch']
