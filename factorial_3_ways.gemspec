# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'factorial_3_ways/version'

Gem::Specification.new do |spec|
  spec.name          = "factorial_3_ways"
  spec.version       = Factorial3Ways::VERSION
  spec.authors       = ["Kerri Miller"]
  spec.email         = ["kerrizor@kerrizor.com"]
  spec.summary       = %q{Factorials patched onto Fixnum, 3 ways.}
  spec.description   = %q{I get asked to calculate factorials in interviews as an example of recursion all the time, so here you go. Can we talk about how I solve the real problems facing your product or business now?}
  spec.homepage      = "http://github.com/kerrizor/factorial_3_ways"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
