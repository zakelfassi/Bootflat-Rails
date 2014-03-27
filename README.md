# Bootflat on Rails

Porting [Bootflat](http://bootflat.github.io/) on Rails.

## How to use?

In your Gemfile, include
    
    gem 'bootflat-rails'

Also, make sure you're using this branch of sass-rails (as that bootflat could only be compiled using Sass 3.3+);

    gem 'sass-rails', github: 'zakelfassi/sass-rails' # Until the gem is officially updated.

In your `Application.css`:

      ...
      *= require bootflat
      *= require_self
      */

And finally, in your `Application.js`:
      
      ...
      //= require bootstrap.min
      //= require icheck.min

That's pretty much all!

### TODO

1. Include a test app (and a style guide on Rails, inspired from [this](http://bootflat.github.io/documentation.html)).
2. Write tests (sure.)
3. Fix bugs.
