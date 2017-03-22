require 'shortcake'

use 'cake-bundle'
use 'cake-outdated'
use 'cake-publish'
use 'cake-test'
use 'cake-version'

task 'clean', 'clean project', ->
  exec 'rm -rf lib'

task 'build', 'build project', ->
  bundle.write
    entry:    'src/index.coffee'
    external: true
    formats: ['cjs', 'es']

task 'watch', 'watch for changes and recompile project', ->
  watch 'src/*.coffee', ->
    invoke 'build'
