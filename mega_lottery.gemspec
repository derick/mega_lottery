# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mega_lottery/version'

Gem::Specification.new do |spec|
  spec.name          = "mega_lottery"
  spec.version       = MegaLottery::VERSION
  spec.authors       = ["Derick Hitchcock"]
  spec.email         = ["hitchcock.derick@gmail.com"]
  spec.summary       = %q{Sample gem}
  spec.description   = %q{Sample gem that i'm writing while reading 'Build a Ruby Gem'}
  spec.homepage      = "http://thiswebsiteistaken.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "pry"  
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"  
end
