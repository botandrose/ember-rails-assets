# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ember/rails/assets/version'

Gem::Specification.new do |spec|
  spec.name          = "ember-rails-assets"
  spec.version       = Ember::Rails::Assets::VERSION
  spec.authors       = ["Micah Geisel"]
  spec.email         = ["micah@botandrose.com"]
  spec.summary       = %q{asset-path helper for ember-rails, including digest!}
  spec.description   = %q{asset-path helper for ember-rails, including digest!}
  spec.homepage      = "https://github.com/botandrose/ember-rails-assets"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
