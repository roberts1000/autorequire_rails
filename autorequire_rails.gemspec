lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autorequire_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "autorequire_rails"
  spec.version       = AutorequireRails::VERSION
  spec.authors       = ["roberts1000"]
  spec.email         = ["roberts@corlewsolutions.com"]

  spec.summary       = "A Rails engine that requires all ruby files in lib/autorequire when a Rails app boots."
  spec.description   = "A Rails engine that requires all ruby files in lib/autorequire when a Rails app boots."
  spec.homepage      = "https://github.com/roberts1000/autorequire_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.6.0'

  spec.add_dependency "rails", ">= 5.2"
end
