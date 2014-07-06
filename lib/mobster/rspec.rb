require 'capybara/rspec'

module Mobster
  module RSpec
    def have_time_in_browser_zone(*args)
      time, format, rest = args[0], args[1], args[2..-1]
      Capybara::RSpecMatchers::HaveText.new(*[time_in_browser_zone(time, format), rest])
    end
  end
end

RSpec.configure do |config|
  config.include Mobster::RSpec
end
