Gem::Specification.new do |spec|
  spec.name          = 'lita-crazycaps'
  spec.version       = '0.0.3'
  spec.authors       = ['Michael Chadwick']
  spec.email         = ['michael.chadwick@gmail.com']
  spec.description   = 'A Lita handler that randomizes the capitalization of a phrase.'
  spec.summary       = 'A Lita handler that randomizes the capitalization of a phrase.'
  spec.homepage      = 'https://github.com/michaelchadwick/lita-crazycaps'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 2.7'

  spec.add_development_dependency 'bundler', '~> 2.1'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '>= 3.0.0.beta2'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'coveralls'
end
