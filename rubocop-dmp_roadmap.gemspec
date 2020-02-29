# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubocop/dmp_roadmap/version"

Gem::Specification.new do |spec|
  spec.name          = "rubocop-dmp_roadmap"
  spec.version       = Rubocop::DmpRoadmap::VERSION
  spec.authors       = ["Bodacious"]
  spec.email         = ["bodacious@katanacode.com"]

  spec.summary       = "Rubocop style checks for DMP Roadmap projects."
  spec.description   = "DMP Roadmap Rubocop style guide checks"
  spec.homepage      = "https://github.com/DMPRoadmap/rubocop-DMP_Roadmap"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir["README.md", "LICENSE", "config/*.yml", "lib/**/*"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "config"]

  spec.add_runtime_dependency "rubocop", ">= 0.58.2"
  spec.add_runtime_dependency "rubocop-rails_config", ">= 0.2.2"
  spec.add_runtime_dependency "rubocop-rspec", ">= 1.27.0"
  spec.add_development_dependency "bundler", "1.16.1"
  spec.add_development_dependency "rake", "13.0.1"
end
