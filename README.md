# autorequire_rails

autorequire_rails is a Rails engine that automatically requires all ruby files in `lib/autorequire` when a Rails app boots.

Why is this useful?  Rails has multiple strategies for loading code and there are some scenarios that can cause Rails to ignore files in `lib`.  One example where this frequently arises is when trying to monkey patch a core ruby class.  Many people create a file like `lib/string.rb` and expect Rails to autoload or eagerload it.  However, out of the box, Rails isn't configured to reach into `lib` so the code won't get loaded .  On top of that, even if Rails were configured to look in `lib`, it still wouldn't work.  Constants, like the `String` constant, are always defined so Rails never thinks it needs to go looking for additional files to load.

To solve these kinds of problems, you typically have to explicitly require files on your own.  autorequire_rails saves you the trouble and establishes a pattern.

## Versioning Scheme

This gem uses [semver](http:/semver.org).

Rails versions that reach EOL are removed in a major or minor release.

## Supported Ruby Versions

Ruby 2.6.0+ is supported.

## Supported Rails Versions

Rails 5.2+.

## Installation

Add this line to your Rails application's Gemfile:

```ruby
gem 'autorequire_rails'
```

And then execute:

    $ bundle

## Usage

Add any file with a .rb extension to the `lib/autorequire` folder (or a sub folder).  Rails will automatically load it during the boot process.

## Recommendations

#### Recommended Folder Stricture

You can use any folder structure you like, but we recommend putting extensions to ruby core classes in `lib/autorequire/core_ext` and extensions to gems in a folder like `lib/autorequire/gem_ext/<gem name here>`.

#### What to Put in lib/autorequire

Ultimately, `lib/autorequire` is useful for adding code **to constants that are already defined**.  As a result, it's ideal for changes to 3rd party libraries and ruby core classes/modules.  It can also be great place to hold reusable code that can be shared between applications.

If you're defining **application specific** custom classes and modules, consider using a sub folder inside `app`.  If you're defining a new constant (and the file name follow proper Rails naming rules), Rails will happily discover it when needed.  `app/lib` is a sensible place to hold these kind of classes and modules.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/corlewsolutions/format_restricter_rails.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
