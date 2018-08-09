# DMP Roadmap Rubocop Style guide

Install this gem in your Ruby project to check your code against DMP Roadmap's style guide using Rubocop.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development, :test do

  gem 'rubocop-dmp_roadmap', require: false

end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubocop-dmp_roadmap

## Usage

If you don't already have a `.rubocop.yml` file, create one in your repo's root directory now:

``` yml
# .rubocop.yml

require: rubocop/dmp_roadmap

inherit_gem:
  rubocop-dmp_roadmap:
    - config/default.yml
```

## Rationales

This file over-writes some of the default assertions in the `rubocop` gem, and the `rubocop-rails` gem. Over-written cops are defined in the [config directory](https://github.com/DMPRoadmap/rubocop-dmp_roadmap/tree/master/config/).


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DMPRoadmap/rubocop-dmp_roadmap

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
