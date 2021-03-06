# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-manager/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-manager"
  spec.version       = JekyllManager::VERSION
  spec.authors       = ["Ashwin Maroli"]
  spec.email         = ["ashmaroli@gmail.com"]

  spec.summary       = %q{Jekyll Admin repackaged with some alterations}
  spec.description   = "An administrative framework for Jekyll sites, Jekyll Manager " \
                       "is essentially Jekyll Admin repackaged with some alterations."

  spec.homepage      = "https://github.com/ashmaroli/jekyll-manager"
  spec.license       = "MIT"

  spec.metadata      = { "allowed_push_host" => "https://rubygems.org" }

  spec.files         = Dir.glob("lib/**/*").concat(%w(LICENSE README.md))
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "jekyll", "~> 3.5"
  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency "sinatra-contrib", "~> 1.4"
  spec.add_dependency "addressable", "~> 2.4"
  spec.add_dependency "oj", "~> 3.3", ">= 3.3.2"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "rubocop", "~> 0.48.1"
  spec.add_development_dependency "sinatra-cross_origin", "~> 0.3"
  spec.add_development_dependency "gem-release", "~> 0.7"
end
