# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'west_framework/version'

Gem::Specification.new do |spec|
  spec.name          = "west_framework"
  spec.version       = WestFramework::VERSION
  spec.authors       = ["David West"]
  spec.email         = ["thedavidwest@gmail.com"]

  spec.summary       = %q{west_framework}
  spec.description   = %q{A gem that adds everything that I like to start with in a Rails project.}
  spec.homepage      = "https://github.com/thedavidwest/west_framework"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "coveralls"
end
