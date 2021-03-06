# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'silvio_core/version'

Gem::Specification.new do |spec|
  spec.name          = "silvio_core"
  spec.version       = SilvioCore::VERSION
  spec.authors       = ["Joost Van Averbeke"]
  spec.email         = ["joost.van.averbeke@telenet.be"]
  spec.description   = %q{Silvio generic core component}
  spec.summary       = %q{Silvio generic core component}
  spec.homepage      = "https://github.com/JoostVanAverbeke/silvio_core"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("lock_jar", "~> 0.8.0")

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.extensions << 'ext/Rakefile'
end
