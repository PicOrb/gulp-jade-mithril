plugin = require('./index')
gutil  = require('gulp-util')
chai   = require('chai')
expect = chai.expect

describe 'gulp-jade-mithril', ->
  it 'should render files', (cb) ->
    stream = plugin()
    buffer = []

    stream.on 'data', (file) ->
      buffer.push file

    stream.on 'end', ->
      output = buffer[0]
      expect(String(output.contents)).to.equal('function(){return m(null,"Moar");}')
      cb()

    stream.write new gutil.File
      base: __dirname
      path: __dirname + '/template.jade'
      contents: new Buffer('p Moar')

    stream.end()
