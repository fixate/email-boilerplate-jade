gulp  = require 'gulp'
jade  = require 'gulp-jade'
utils = require '../utils'

conf = require '../gulpconfig'

gulp.task 'jade', () ->
  gulp.src(["./#{conf.path.src}/*.jade"])
    .pipe jade( pretty: true ).on 'error', utils.handleError
    .pipe gulp.dest(conf.path.dist)

gulp.task 'jade:watch', ['jade'], () ->
  global.browserSync.reload()
