# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lab/version'

Gem::Specification.new do |spec|
  spec.name          = "lab"
  spec.version       = Lab::VERSION
  spec.authors       = ["Johannes Gorset"]
  spec.email         = ["jgorset@gmail.com"]
  spec.description   = "Command-line client for GitLab"
  spec.summary       = "Command-line client for GitLab"
  spec.homepage      = "http://github.com/jgorset/lab"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "gitlab"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
