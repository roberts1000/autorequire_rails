# Automatically require all .rb files in the lib/autorequire directory.  This directory holds any
# files that should be loaded, but are unabled to be autoloaded by Rails (like extensions to core
# classes/modules and other monkey patches to already loaded constants).
#
# Why is this necessary?  Consider the situation where you would like to add a method to the String class
# inside a lib/core_ext/string.rb file. Rails has an autoloading feature, but it only kicks-in when a
# constant is missing.  Since the String constant is always present, rails will never attempt to autoload it
# and any methods defined in string.rb will never be loaded.  The general solution to this problem is to
# manually require files that extend core classes inside an initializer.  The autorequire pattern takes this
# a step farther by giving us a place to automatically require any .rb file.
Dir.glob(Rails.root.join('lib', 'autorequire', '**', '*.rb')).each { |f| require f }
