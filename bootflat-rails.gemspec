lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootflat-rails/version'

Gem::Specification.new do |s|
  s.name        = 'bootflat-rails'
  s.version     = BootflatRails::VERSION
  s.date        = Date.today.to_s
  s.summary     = "Bootflat on Rails"
  s.description = "Use Bootflat (a flat adaptation of Bootstrap on Rails)"
  s.authors     = ["Zak El Fassi", "Grzegorz Bizon"]
  s.email       = 'z@kelfassi.com'
  s.files	= `git ls-files`.split("\n")
  # s.test_files = `git ls-files -- test/*`.split("\n")
  s.homepage	= 'https://github.com/zakelfassi/Bootflat-Rails'
  s.license     = 'MIT'
  s.metadata	= { "issue_tracker" => "https://github.com/zakelfassi/Bootflat-Rails/issues" }

  s.add_development_dependency 'sass-rails', '~> 4.0'
  s.add_runtime_dependency 'sass', '~> 3.3'
  s.add_runtime_dependency 'jquery-rails', '~> 3.1'
  s.add_runtime_dependency 'bootstrap-sass', '~> 3.1'
end
