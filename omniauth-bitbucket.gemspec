# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'omniauth-bitbucket/version'

Gem::Specification.new do |gem|
  gem.authors     = ['Barnabas Birmacher', 'StackShare']
  gem.email       = ['birmacher@gmail.com']
  gem.description = 'OmniAuth strategy for Bitbucket.'
  gem.summary     = 'OmniAuth strategy for Bitbucket.'
  gem.homepage    = 'https://github.com/stackshareio/omniauth-bitbucket2'
  gem.license     = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-bitbucket'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Bitbucket::VERSION

  gem.add_dependency 'omniauth', '~> 1.9'
  gem.add_dependency 'omniauth-oauth2', '>= 1.6', '< 2.0'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'rspec', '~> 3.9'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
