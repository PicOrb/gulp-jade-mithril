# Compile Jade templates to Mithril.DOM

Uses [jade-mithril](https://github.com/ysimonson/jade-mithril) to compile templates to `Mithril.DOM` directives as part of your [Gulp](https://github.com/gulpjs/gulp) build process.

The files are kind of useless on their own, so you'll want to prefix+suffix them to handle exporting the generated expressions.

## Usage

````javascript
var gulp = require('gulp');
var jadeMithril = require('gulp-jade-mithril');

// Build React templates
gulp.task('templates', function () {
  gulp.src(['templates/*.jade'])
    .pipe(jadeMithril())
    .pipe(gulp.dest('build'))
});
````
