lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autorequire_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "autorequire_rails"
  spec.version       = AutorequireRails::VERSION
  spec.authors       = ["roberts"]
  spec.email         = ["roberts@corlewsolutions.com"]

  spec.summary       = %q(Require all ruby files inside lib/autorequire when your Rails app boots.)
  spec.description   = %q(A Rails engine that makes your Rails application require all ruby files inside lib/autorequire when the app boots.)
  spec.homepage      = "https://github.com/corlewsolutions/autorequire_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "pry", "~> 0.11.3"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.7.0"

  spec.add_dependency "rails", ">= 4"
end
