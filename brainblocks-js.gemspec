# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "brainblocks-js/version"

Gem::Specification.new do |spec|
  spec.name          = "brainblocks-js"
  spec.version       = Brainblocks::Js::VERSION
  spec.authors       = ["Mitchel"]
  spec.email         = ["mitchel_jager@hotmail.com"]

  spec.summary       = %q{Brainblocks for use in Rails asset pipeline}
  spec.description   = %q{Brainblocks for use in Rails asset pipeline}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
