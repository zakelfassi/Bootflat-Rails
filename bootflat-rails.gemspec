lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootflat-rails/version'

Gem::Specification.new do |s|
  s.name        = 'bootflat-rails'
  s.version     = BootflatRails::VERSION
  s.date        = '2014-03-22'
  s.summary     = "Bootflat on Rails"
  s.description = "Use Bootflat (a flat adaptation of Bootstrap on Rails)"
  s.authors     = ["Zak El Fassi", "Youness Adonis", "Mohammed Aboullaite"]
  s.email       = 'z@kelfassi.com'
  s.files	= `git ls-files`.split("\n")
  # s.test_files = `git ls-files -- test/*`.split("\n")
  s.homepage	= 'http://rubygems.org/gems/bootflat-rails'
  s.license     = 'MIT'

  s.add_development_dependency 'sass-rails', '>= 3.2'
  s.add_runtime_dependency 'sass', '~> 3.2'
  # s.add_runtime_dependency 'jquery-rails', '~> 3.1.0'
end
