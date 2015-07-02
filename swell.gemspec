# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'swell/version'

Gem::Specification.new do |spec|
  spec.name          = "swell"
  spec.version       = Swell::VERSION
  spec.authors       = ["Joseph McCormick"]
  spec.email         = ["esmevane@gmail.com"]

  spec.summary       = %q{A swell way to add data to ElasticSearch.}
  spec.description   = %q{Use POROs to define ElasticSearch indexes}
  spec.homepage      = "http://github.com/esmevane/swell"
  spec.license       = "MIT"
  spec.bindir        = "exe"
  spec.require_paths = ["lib"]

  spec.files         = `git ls-files -z`.split("\x0").reject do |file|
    file.match(%r{^(test|spec|features)/})
  end

  spec.executables   = spec.files.grep(%r{^exe/}) do |file|
    File.basename(file)
  end

  spec.add_dependency "elasticsearch", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "rspec", "~> 3.3"
end
