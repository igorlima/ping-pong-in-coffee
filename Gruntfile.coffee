module.exports = (grunt) ->
  grunt.initConfig
    jasmine:
      options:
        specs:   'spec/js/**/*.js'
        version: '1.3.1'
      all:
        src: ['src/js/**/*.js']

    clean:
      jasmine: ['spec/js/**/*.js']
      script:  ['src/js/**/*.js']

    coffee:
      jasmine:
        expand: true
        flatten: true
        cwd: 'spec/coffee/'
        src: ['**/*.coffee']
        dest: 'spec/js/'
        ext: '.js'
      source:
        expand: true
        flatten: true
        cwd: 'src/coffee/'
        src: ['**/*.coffee']
        dest: 'src/js/'
        ext: '.js'

    watch:
      spec_js:
        files: [
          'spec/coffee/**/*.coffee'
          'src/coffee/**/*.coffee'
        ]
        tasks: [
          'clean'
          'coffee'
          'jasmine'
        ]

  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  
  grunt.registerTask 'default', [
    'clean'
    'coffee'
    'jasmine'
  ]
