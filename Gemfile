source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in autorequire_rails.gemspec
gemspec

group :development do
  gem 'rspec_starter', "~> 3.0", require: false
  gem 'rubocop_plus', "~> 2.0", require: false
end

group :development, :test do
  gem "bootsnap", require: false
  gem "bundler", "~> 2.0"
  gem "debug", "~> 1.9"
  gem "puma", "~> 6.4"
  gem "rake", "~> 13.0"
  gem "rspec-rails", "~> 6.1.2"
  gem "sass-rails", "~> 6.0"
  gem "sqlite3", "~> 1.4"
end
