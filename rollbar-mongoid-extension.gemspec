# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Scalingo SAS"]
  gem.email         = ["support@scalingo.com"]
  gem.description   = %q{Extension to rollbar-gem to use the ActiveRecordExtension with Mongoid}
  gem.summary       = %q{Reports exceptions to Rollbar on validation errors with Mongoid}
  gem.homepage      = "https://github.com/Scalingo/rollbar-mongoid-extension-gem"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.name          = "rollbar-mongoid-extension"
  gem.require_paths = ["lib"]
  gem.version       = "0.3"

  gem.add_runtime_dependency 'rollbar', '~> 1.5', '>= 0.10.7'
  gem.add_runtime_dependency 'mongoid', '~> 4'
  gem.add_runtime_dependency 'activesupport', '~> 4'
end
