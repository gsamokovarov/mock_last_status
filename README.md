# Mock Last Status

For that time when you need to test `$?`. Wait, what?

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mock_last_status'
```

And then execute:

    $ bundle

## Usage

```ruby
MockLastStatus.set(123)
$?.exitstatus # => 123
```

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/gsamokovarov/mock_last_status. This project is intended to
be a safe, welcoming space for collaboration, and contributors are expected to
adhere to the [Contributor Covenant](http://contributor-covenant.org) code of
conduct.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).
