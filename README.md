# Backer

Backer facilitates a simplistic form of the Repository Pattern with simple Ruby
applications.

In a nutshell, repositories, when used in this manner, allow you to abstract
your storage mechanism away from your application logic and implementaiton
detail. Adapters adhere to a set API and should be interchangeable.

As an ongoing effort to understand more about how to make my applications more
adaptable and deferring hard decisions until later, I decided to explore the
Repository Pattern with relation to my Event Sourcing and CQRS research.

When using Backer, you may register as many non-conflicting repositories as you
wish.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'backer', :github => 'dydx/backer'
```

And then execute:

    $ bundle

## Usage

### Sinatra
1. `require 'backer'` in your main application file
2. `require 'backer-<adapter name>'` to specify which adapter you wish to use
3. Then configure it:
```ruby
configure :development do
	Backer::Repo.register(:user, UserMemoryRepository.new)
end
```
 ***Note:*** `:user` and `UserMemoryRepository` do not come with the package

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dydx/backer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

