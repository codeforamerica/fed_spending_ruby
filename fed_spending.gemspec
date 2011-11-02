# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fed_spending/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'fed_spending'
  gem.version     = FedSpending::VERSION
  gem.author      = 'blakeshall'
  gem.email       = 'blake@codeforamerica.org'
  gem.homepage    = 'https://github.com/codeforamerica/fed_spending_ruby'
  gem.summary     = %q{A Ruby wrapper for the FedSpending API}
  gem.description = %q{A Code for America sponsored Ruby wrapper for the FedSpending API. See FedSpending.org for more information.}

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
  gem.require_paths = ['lib']

  gem.add_development_dependency 'maruku'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'webmock'

  gem.add_runtime_dependency 'faraday', '~> 0.7'
  gem.add_runtime_dependency 'faraday_middleware', '~> 0.7'
  gem.add_runtime_dependency 'hashie', '~> 1.1'
  gem.add_runtime_dependency 'multi_xml', '~> 0.4'
  gem.add_runtime_dependency 'rash', '~> 0.3'
end
