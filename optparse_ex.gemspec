# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "optparse_ex/version"

Gem::Specification.new do |spec|
  spec.name          = "optparse_ex"
  spec.version       = OptparseEx::VERSION
  spec.authors       = ["Masa"]
  spec.email         = ["masaomi.hatakeyama@gmail.com"]
  spec.description   = %q{This extension allows us to use optparse library more simply to add accessor method.}
  spec.summary       = %q{A small extension of optparse library.}
  spec.homepage      = "https://github.com/masa/optparse_ex"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
