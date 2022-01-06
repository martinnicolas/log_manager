# LogManager

![log_manager_banner](https://user-images.githubusercontent.com/5104496/148384953-f5a71857-dda9-4cd6-9d8c-e124a554792b.png)

[![Build Status](https://app.travis-ci.com/martinnicolas/log_manager.svg?branch=master)](https://app.travis-ci.com/martinnicolas/log_manager)
[![Wercker](https://img.shields.io/github/license/mashape/apistatus.svg)](https://opensource.org/licenses/MIT) [![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md) 

LogManager allows you to check your Rails app log's.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'log_manager', github: 'martinnicolas/log_manager'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install log_manager

## Usage

Add the following line in config/routes.rb to make your logs availables at /logs.

```ruby
mount LogManager::Engine => '/logs'
```

## Mount using warden (devise)

```ruby
  admin_constraint = lambda do |request|
    request.env['warden'].authenticate? and request.env['warden'].user.role?(:sadmin)
  end

  constraints admin_constraint do
    mount LogManager::Engine, at: "/logs"
  end
```

## Mount using devise (method 2)

```ruby
  authenticate :user, ->(u) { u.role?(:sadmin) } do
    mount LogManager::Engine, at: "/logs"
  end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/martinnicolas/log_manager. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LogManager project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/martinnicolas/log_manager/blob/master/CODE_OF_CONDUCT.md).
