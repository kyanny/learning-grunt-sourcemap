My personal study of how to use Grunt

The goal of this study is,

1. Learn how to use Grunt (how to write Gruntfile)
2. Learn how to use grunt-contrib-coffee to compile coffeescript (with source map support)
3. Learn how to use grunt-contrib-concat to combine compiled javascript into one js file (with source map support)
4. Learn how to use grunt-contrib-uglify to minify combined js file (with source map support)

How to run:

    $ grunt        # <-- run default task
    $ grunt clean  # <-- cleanup temporary working directories/files

Confirm how it works:

    $ ruby -run -e httpd public -p 8080
    $ open http://localhost:8080/

Then open Developer Tools of Browser, enable source map, open source tab, open `all.js`
