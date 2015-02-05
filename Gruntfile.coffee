module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        options:
          sourceMap: true
        files:
          'public/js/app.js': 'public/coffee/app.coffee'
          'public/js/lib.js': 'public/coffee/lib.coffee'

    concat:
      options:
        sourceMap: true
      dist:
        src: [
          'public/js/app.js',
          'public/js/lib.js'
        ]
        dest: 'public/js/all.js'

    uglify:
      options:
        sourceMap: true
      my_target:
        files:
          'public/js/all.min.js': ['public/js/all.js']

    clean:
      ['public/js/*']

  grunt.registerTask 'default', [
    'coffee:compile',
    'concat',
    'uglify:my_target'
  ]

  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-concat')
  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-clean')
