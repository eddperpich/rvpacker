# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fusionpacker/version'

Gem::Specification.new do |spec|
  spec.name          = 'fusionpacker'
  spec.version       = Fusionpacker::VERSION
  spec.authors       = ["Howard Jeng", "Andrew Kesterson", 'Solistra', 'eddperpich']
  spec.email         = ['eddperpich@gmail.com']
  spec.summary       = %q{Pack and unpack RPG Maker data files, for use on pokemon infinite fusion}
  spec.homepage      = "https://github.com/homie-estate/fusionpacker"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 2.4"
  spec.add_development_dependency "rake"
  spec.add_dependency "optimist"
  spec.add_dependency "scanf"
  spec.add_dependency "psych", "2.0.0"
  spec.add_dependency "formatador"
end
