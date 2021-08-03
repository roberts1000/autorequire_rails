source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in autorequire_rails.gemspec
gemspec

group :development do
  gem 'rspec_starter', "~> 1.1", require: false
  gem 'rubocop_plus', "~> 2.0", require: false
end

group :development, :test do
  gem 'bootsnap', require: false
  gem 'puma', '~> 5.3'
end
