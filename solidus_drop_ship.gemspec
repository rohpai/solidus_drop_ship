 # encoding: UTF-8

lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'solidus_drop_ship/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_drop_ship'
  s.version     = SolidusDropShip.version
  s.summary     = 'Drop Shipping Extension'
  s.description = 'Adds drop shipping functionality to Solidus stores.'
  s.required_ruby_version = '>= 2.1.0'

  s.author    = 'Jeff Dutil'
  s.email     = 'JDutil@BurlingtonWebApps.com'
  s.homepage  = 'http://github.com/JDutil/spree_drop_ship'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'durable_decorator', '~> 0.2.0'
  s.add_dependency 'solidus_api'
  s.add_dependency 'solidus_backend', ['>= 1.0', '< 3']
  s.add_dependency 'solidus_core'
  s.add_dependency 'solidus_support'

  s.add_development_dependency 'capybara',           '~> 2.5'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'coveralls'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'rspec-rails',        '~> 3.4'
  s.add_development_dependency 'sass-rails',         '~> 5.0.6'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'solidus_auth_devise'
  s.add_development_dependency 'solidus_sample'
  s.add_development_dependency 'sqlite3'
end
