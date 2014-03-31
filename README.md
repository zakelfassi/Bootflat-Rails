# Bootflat on Rails

Porting [Bootflat](http://bootflat.github.io/) on Rails.

## Demo

You can check the demo app [here](http://bootflat-rails.herokuapp.com/)

## How to use?

In your Gemfile, include
    
	gem 'bootflat-rails'

Also, make sure you're using this branch of sass-rails (as that bootflat could only be compiled using Sass 3.3+);

	gem 'sass-rails', :git => 'https://github.com/zakelfassi/sass-rails' # Until the gem is officially updated.

In your `Application.css`:

	...
	*= require bootflat
	*= require_self
	*/

And finally, in your `Application.js`:
      
	...
	//= require bootstrap
	//= require icheck.min

An example of using iCheck for radio/checkbox would be:

  $('.checkbox input').iCheck({
    checkboxClass: 'icheckbox_flat',
    increaseArea: '20%'
  });
  
  $('.radio input').iCheck({
    radioClass: 'iradio_flat',
    increaseArea: '20%'
  });

That's pretty much all!

### TODO

~~1. Rebuild gem to use and depend on twitter-bootstrap3-rails, remove bootstrap.min.js and bootstrap.min.css -- verify~~
~~2. Include a test app (and a style guide on Rails, inspired from [this](http://bootflat.github.io/documentation.html)).~~
3. Write tests (sure.)
~~4. Fix bugs.~~
