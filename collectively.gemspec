$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "collectively/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "collectively"
  s.version     = Collectively::VERSION
  s.authors     = ["Cory ODaniel"]
  s.email       = ["collectively@coryodaniel.com"]
  s.homepage    = "http://github.com/coryodaniel/collectively"
  s.description = s.summary     = "Add methods to ActiveRecord relations and collections"
   
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 3.2.0"

  s.add_development_dependency "sqlite3"
end
