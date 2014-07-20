# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bog/version'

Gem::Specification.new do |spec|
  spec.name          = "bog"
  spec.version       = Bog::VERSION
  spec.authors       = ["sam"]
  spec.email         = ["sam.pointer@opsunit.com"]
  spec.summary       = %q{A tool for managing cloud API and configuration management credentials.}
  spec.description   = %q{A tool for managing cloud API and configuration management credentials. rbenv for dotfiles.}
  spec.homepage      = ""
  spec.license       = "GPL3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_dependency "slop"
end