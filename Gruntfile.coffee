module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      compile:
        options:
          sourceMap: true
        files:
          'src/js/app.js': 'src/coffee/app.coffee'
          'src/js/lib.js': 'src/coffee/lib.coffee'

    concat:
      options:
        sourceMap: true
      dist:
        src: [
          'src/js/app.js',
          'src/js/lib.js'
        ]
        dest: 'build/all.js'

    uglify:
      options:
        sourceMap: true
      my_target:
        files:
          'release/all.min.js': ['build/all.js']

    clean:
      build: ['build'],
      release: ['release']

  grunt.registerTask 'default', [
    'coffee:compile',
    'concat',
    'uglify:my_target'
  ]

  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-concat')
  grunt.loadNpmTasks('grunt-contrib-uglify')
  grunt.loadNpmTasks('grunt-contrib-clean')
