# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "alchemy/essences/essence_color/version"

Gem::Specification.new do |spec|
  spec.name          = "alchemy-essence_color"
  spec.version       = Alchemy::Essences::EssenceColor::VERSION
  spec.authors       = ["Robin Boening"]
  spec.email         = ["rb@liquidbass.de"]

  spec.summary       = %q{Adds a content type EssenceColor with a color picker to your Alchemy website.}
  spec.description   = %q{This gem provides a new content type called EssenceColor. It appears as a color picker in your elements and saves the hex value in the database. }
  spec.homepage      = "http://alchemy-cms.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'alchemy_cms', ['>= 3.0.0']

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "factory_girl_rails"
  spec.add_development_dependency "rspec-activemodel-mocks", "~> 1.0"
  spec.add_development_dependency "rspec-rails",             "~> 3.1"
end
