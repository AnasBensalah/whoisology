# Whoisology

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/whoisology`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'whoisology'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install whoisology

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/censys.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## API Docs
```
TEST
https://whoisology.com/api?request=test&archive={Archive}&level={Level}&field={Field}&domain={Domain}&auth={key}

PING
https://whoisology.com/api?request=ping&archive={Archive}&level={Level}&field={Field}&value=domain={Domain}&auth={key}
https://whoisology.com/api?request=ping&archive=7&level=admin&field=email&domain=google.com&auth={key}
https://whoisology.com/api?request=ping&archive=7&level=admin&field=email&value=dns­admin@google.com&auth={key}

FLAT
https://whoisology.com/api?request=flat&archive={Archive}&level={Level}&field={Field}&value=domain={Domain}&auth={key}
https://whoisology.com/api?request=flat&archive=7&level=admin&field=email&value=dns­admin@google.com&auth={key}
https://whoisology.com/api?request=flat&archive=7&level=admin&field=email&domain=google.com&auth={key}

DOMAIN_NAME
https://whoisology.com/api?request=domain_name&archive={Archive}&domain={Domain}&auth={key}
https://whoisology.com/api?request=domain_name&archive=7&domain=google.com&auth={key}

FULL
https://whoisology.com/api?request=full&archive={Archive}&requested_info={Level}&level={Level}&field={Field}&domain={Domain}&auth={key}
https://whoisology.com/api?request=full&archive=7&requested_info=admin&level=admin&field=email&domain=stub.com&auth={key}

FIELD
/api?request=field&archive={Archive}&level={Level}&field={Field}&domain={Domain}&auth={key}

Example: Looking for the Admin level email address for the domain name google.com:
/api?request=field&archive=7&level=admin&field=email&domain=google.com&auth={key}


CREDITS
/api?request=credits&auth={key}
```
