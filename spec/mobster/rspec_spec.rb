require 'spec_helper'

require 'mobster/rspec'

describe Mobster::RSpec do
  describe '#have_time_in_browser_zone' do
    let(:page) { double('page', evaluate_script: 0) }
    it 'calls time_in_browser_zone' do
      time = Time.now
      expect(self).to receive(:time_in_browser_zone).with(time, '%D')

      expect(page).to have_time_in_browser_zone(time, '%D')
    end
  end
end
