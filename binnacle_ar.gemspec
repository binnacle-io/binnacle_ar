$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "binnacle_ar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "binnacle_ar"
  s.version     = BinnacleAr::VERSION
  s.authors     = ["Brian Sam-Bodden"]
  s.email       = ["brian@binnacle.io"]
  s.homepage    = "https://github.com/binnacle-io/binnacle_ar"
  s.summary     = "ActiveRecord callbacks to signal Binnacle"
  s.description = "Adds ActiveRecord callbacks for create, update and delete that will signal Binnacle
  with the state of the object (to_json)"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.asc"]

  s.add_dependency 'rails', '~> 4.2'
  s.add_dependency 'binnacle', '~> 0.4', '>= 0.4.0'

  s.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3.10'
  s.add_development_dependency 'jquery-rails', '~> 4.0', '>= 4.0.5'
  s.add_development_dependency 'coffee-rails', '~> 4.1', '>= 4.1.0'
  s.add_development_dependency 'dotenv-rails', '~> 2.0', '>= 2.0.2'
  s.add_development_dependency 'turbolinks', '~> 2.5'
end
