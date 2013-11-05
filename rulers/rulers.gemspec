# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rulers/version'

Gem::Specification.new do |spec|
  spec.name          = "rulers_fiabane"
  spec.version       = Rulers::VERSION
  spec.authors       = ["Jason Fiabane"]
  spec.email         = ["jason@fiabane.com"]
  spec.description   = %q{a rack-based web framework}
  spec.summary       = %q{a rack-based web framework}
  spec.homepage      = "http://github.com/fiabane/rulers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rack"
  spec.add_development_dependency "rack-test"
end
