require "bundler/gem_tasks"

task :default => :spec

# Adds the ability to run 'rake console' in the terminal and have a console
# that already knows about the gem
task :console do
  exec "pry -r autorequire_rails -I ./lib"
  # exec "irb -r autorequire_rails -I ./lib"
end
