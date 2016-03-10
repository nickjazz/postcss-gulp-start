notify      = require 'gulp-notify'

dev = 'dev/'
dest = 'public/'

config =
  dev: dev
  dest: dest

  markups:
    src: ["#{dev}*.jade", "#{dev}*/*.jade"]
    dest: dest
  styles:
    src: ["#{dev}**/*.css"]
    dest: dest
    dev: "#{dev}/assets/stylesheets/libs"
  scripts:
    src: ["#{dev}**/*.coffee"]
    dest: dest
    watch: ["#{dev}assets/**/*.coffee"]
  files:
    src: ["#{dev}**/*.+(jpg|jpeg|png|gif|svg|js|html|css)"]
    dest: dest

  options:
    jade:
      pretty: true
    coffee:
      bare: true
    plumber:
      errorHandler: notify.onError "Error: <%= error.message %>"
    browserSync:
      server:
        baseDir: dest
      notify: false


module.exports = config
