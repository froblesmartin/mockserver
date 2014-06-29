# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mockserver/version'

Gem::Specification.new do |spec|
  spec.name = 'mockserver-client'
  spec.version = MockServer::VERSION
  spec.authors = ['Nayyara Samuel']
  spec.email = ['nayyara.samuel@opower.com']
  spec.summary = %q(A Ruby client for MockServer)
  spec.required_ruby_version = '>= 1.9.3'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.3.2'
  spec.add_development_dependency 'rspec', '~> 3.0.0'
  spec.add_development_dependency 'simplecov', '~> 0.8.2'
  spec.add_development_dependency 'webmock', '~> 1.18'
  spec.add_development_dependency 'rubocop', '~> 0.23.0'

  spec.add_dependency 'hashie', '~> 3.0'
  spec.add_dependency 'json', '~> 1.8.1'
  spec.add_dependency 'activesupport', '~> 4.1.1'
  spec.add_dependency 'rest-client', '~> 1.6.7'
  spec.add_dependency 'logging_factory', '~> 0.0.2'
  spec.add_dependency 'thor', '~> 0.19.1'
  spec.add_dependency 'colorize', '~> 0.7.0'
end