require "rails"
require "autorequire_rails/version"
require "autorequire_rails/engine"

# Setup pry for development when running "rake console". Guard against load
# errors in production (since pry is only loaded as a DEVELOPMENT dependency
# in the .gemspec)
# rubocop:disable Lint/SuppressedException
begin
  require "pry"
rescue LoadError
end
# rubocop:enable Lint/SuppressedException
