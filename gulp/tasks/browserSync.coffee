gulp         = require 'gulp'

conf = require '../gulpconfig'

gulp.task 'browser-sync', () ->
  global.browserSync.init {
    server:
      baseDir: "./#{conf.path.dist}"
    open: true
    notify: false
    # tunnel: true
  }

gulp.task 'bs-reload', () ->
  global.browserSync.reload()
