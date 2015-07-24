require File.expand_path("../lib/jpts_extractor/version", __FILE__)
require 'rake'

Gem::Specification.new do |spec|
  spec.name                 = 'jpts_extractor'
  spec.version              = JPTSExtractor::VERSION
  spec.authors              = ["Joe Gain"]
  spec.email                = 'joe.gain@gmail.com'
  spec.homepage             = 'https://github.com/timeout'
  spec.summary              = 'Journal Publishing Tag Set extractor'
  spec.description          = 'An article deserializer for the Journal Publishing Tag Set format'

  spec.files                = FileList['lib/**/*.rb']
  spec.require_path         = 'lib'
  spec.platform             = Gem::Platform::RUBY
  spec.rubyforge_project    = '[none]'
  spec.license              = 'MIT'

  spec.add_dependency 'ox', '~> 2.2.0', '>=2.2.0'
  spec.add_dependency 'colorize', '~> 0.7.7', '>=0.7.7'

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "factory_girl", "~> 4.5.0", '>=4.5.0'
end
