This site is built with [Middleman](//middlemanapp.com/) and 
[Bower](//bower.io/). Middleman compiles partials, sass, and coffeescript, into
optimized html, css, and javascript. Bower is used to manage css and javascript
third party dependencies.

## Installation

You'll need at minimum Ruby (2.0.0 suggested), RubyGems, and Bundler to get 
started. Once you have all that, just run `bundle install` to install Middleman 
and all it's dependencies.

## Development

Middleman comes with a simple server. Run `middleman` to start it up. That will
run on localhost:4567, which you can hit from your browser -- `open
localhost:4567`. It will refresh automatically as you change files.

## Build

You can build out the site with `rake build`, but you probably won't need this.
This happens when you run the development server, and when you publish (below).

## Create a new article

`middleman article TITLE`

## Publish

Once you're happy with your changes, commit them and run `rake publish`, which 
will run the build step, add all the files to the 'gh-pages' branch and push.

## Adding Dependencies

If you want to add additional front-end dependencies (jQuery, Underscore.js,
etc.), please use Bower. For that, you'll need node, npm, then `npm install -g
bower`. Then you should be able to do something like `bower install jquery
--save`.
