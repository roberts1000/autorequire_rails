lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autorequire_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "autorequire_rails"
  spec.version       = AutorequireRails::VERSION
  spec.authors       = ["roberts1000"]
  spec.email         = ["roberts@corlewsolutions.com"]

  spec.summary       = "A Rails engine that requires all ruby files in lib/autorequire when a Rails app boots."
  spec.description   = "A Rails engine that requires all ruby files in lib/autorequire when a Rails app boots."
  spec.homepage      = "https://github.com/corlewsolutions/autorequire_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry", "~> 0.11.3"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec-rails", "~> 3.7.2"
  spec.add_development_dependency "sass-rails", "~> 5.0"
  spec.add_development_dependency "sqlite3", "~> 1.3.11"

  # The following code lets us test against multiple versions of Rails.  The travis.yml has a section that sets the
  # environment variable during testing.
  rails_version = ENV["BASE_RAILS_VERSION"] ? "~> #{ENV['BASE_RAILS_VERSION']}" : ">= 4"
  spec.add_dependency "rails", rails_version
end
