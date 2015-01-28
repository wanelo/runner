# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'runner/version'

Gem::Specification.new do |spec|
  spec.name          = 'runner'
  spec.version       = Runner::VERSION
  spec.authors       = ["Eric Saxby & Matt Camuto"]
  spec.email         = ["eric+matt@wanelo.com"]
  spec.summary       = %q{Run things}
  spec.description   = %q{Run things}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
