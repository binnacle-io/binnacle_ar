$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "binnacle_ar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "binnacle_ar"
  s.version     = BinnacleAr::VERSION
  s.authors     = ["Brian Sam-Bodden"]
  s.email       = ["brian@binnacle.io"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BinnacleAr."
  s.description = "TODO: Description of BinnacleAr."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.asc"]

  s.add_dependency "rails", "~> 4.2.4"
  s.add_dependency "binnacle", "~> 0.2.6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "coffee-rails", "~> 4.1.0"
  s.add_development_dependency "dotenv-rails", "~> 2.0.2"
  s.add_development_dependency "turbolinks"
end
