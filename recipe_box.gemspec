# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'recipe_box/version'

Gem::Specification.new do |spec|
  spec.name          = "recipe_box"
  spec.version       = RecipeBox::VERSION
  spec.authors       = ["Josh Klina"]
  spec.email         = ["joshua.klina@gmail.com"]
  spec.summary       = %q{A command line app that helps manage a git repository of (cooking) recipes.}
  spec.description      = "A command line app that generates templates for make recipes."
  # spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   << spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", '~> 0.19'

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.2"
  spec.add_development_dependency "minitest", "~> 5.3"
  spec.add_development_dependency "mocha", "~> 1.0"
end
