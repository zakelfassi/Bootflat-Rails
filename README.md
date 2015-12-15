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

You can also add following line to your `Application.js` if you want to apply icheck on all checkboxes and radio buttons: 

	...
	//= require bootflat_icheck


That's pretty much all!

## Troubleshooting

You may need (Rails 4.1+) to add the following line to an asset initializer (`/initializers/asset.rb`)

	Rails.application.config.assets.precompile << /\.(?:png|jpg|jpeg|gif)\z/


### TODO

1. Write tests (sure.)
2. Include bootflat_form_for and bootflat_form_tag helpers or use existing gem (ex. [rails-bootstrap-forms](https://github.com/bootstrap-ruby/rails-bootstrap-forms))
