# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mock_last_status/version'

Gem::Specification.new do |spec|
  spec.name          = "mock_last_status"
  spec.version       = MockLastStatus::VERSION
  spec.authors       = ["Genadi Samokovarov"]
  spec.email         = ["gsamokovarov@gmail.com"]

  spec.summary       = "Mocks the $? global variable in Ruby."
  spec.description   = "Mocks the $? global variable in Ruby."
  spec.homepage      = "https://github.com/gsamokovarov/mock_last_status"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/mock_last_status/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest", "~> 5.0"
end
