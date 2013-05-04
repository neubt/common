$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "common/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "common"
  s.version     = Common::VERSION
  s.authors     = ["wuwx"]
  s.email       = ["admin@neubt.com"]
  s.homepage    = "http://github.com/neubt/common"
  s.summary     = "Summary of Common."
  s.description = "Description of Common."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
