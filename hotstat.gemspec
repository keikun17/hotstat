# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hotstat/version'

Gem::Specification.new do |spec|
  spec.name          = "hotstat"
  spec.version       = Hotstat::VERSION
  spec.authors       = ["Buddy Magsipoc"]
  spec.email         = ["keikun17@gmail.com"]

  spec.summary       = "Pulls heroes of the storm data from some chinese website"
  spec.description   = "Pulls heroes of the storm data from some chinese website"
  spec.homepage      = "https://github.com/keikun17/hotstat"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "3.3.0"
  spec.add_development_dependency "nokogiri"
end
