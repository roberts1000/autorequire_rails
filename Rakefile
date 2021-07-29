begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

APP_RAKEFILE = File.expand_path("spec/dummy/Rakefile", __dir__)
load 'rails/tasks/engine.rake'
load 'rails/tasks/statistics.rake'
Bundler::GemHelper.install_tasks

require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

desc "Run 'rake console' and have a console that already knows about the gem"
task console: :environment do
  exec "pry -r autorequire_rails -I ./lib"
  # exec "irb -r autorequire_rails -I ./lib"
end
