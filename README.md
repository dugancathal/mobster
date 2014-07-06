# Mobster

A set of Capybara helpers that make writing specs with regard to timezones a
little simpler.

## Installation

Add this line to your application's Gemfile:

    gem 'mobster'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mobster

## Usage

After including Mobster in your project, modify your test/spec helper to include
the `Mobster::Helpers`.

In RSpec, that might look like:

    # spec/request_spec_helper.rb

    RSpec.configure do |config|
      # ...
      config.include Mobster::Helpers
      # ...
    end

## Contributing

1. Fork it ( http://github.com/dugancathal/mobster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
