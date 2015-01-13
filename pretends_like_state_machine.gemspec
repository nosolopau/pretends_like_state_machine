$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pretends_like_state_machine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pretends_like_state_machine"
  s.version     = PretendsLikeStateMachine::VERSION
  s.authors     = ["Pablo Torrecilla"]
  s.email       = ["pau@nosolopau.com"]
  s.homepage    = "http://nosolopau.com"
  s.summary     = "A minimal, trivial, deadly simple state machine for Mongoid"
  s.description = "A minimal, trivial, deadly simple state machine for Mongoid"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "mongoid"
end
