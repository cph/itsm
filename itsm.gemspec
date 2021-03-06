# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itsm/version'

Gem::Specification.new do |spec|
  spec.name          = "itsm"
  spec.version       = ITSM::VERSION
  spec.authors       = ["Bob Lail"]
  spec.email         = ["bob.lail@cph.org"]
  spec.summary       = %q{A library for communicating with the ITSM API}
  spec.description   = %q{A library for communicating with the ITSM API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-ntlm"
  spec.add_dependency "savon", "~> 2.0"
  spec.add_dependency "nokogiri"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
