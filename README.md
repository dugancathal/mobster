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
    require 'mobster/rspec'

Currently, there are two methods in the API:

#### time\_in\_browser\_zone

Return the passed time in the browser's timezone formatted by the second
argument.

    expect(page).to have_time_in_browser_zone(Time.now, '%D' # => 07/03/14)

#### current\_timezone

Return the current timezone of the browser.

    current_timezone #=> 'MDT'

## Contributing

1. Fork it ( http://github.com/dugancathal/mobster/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
