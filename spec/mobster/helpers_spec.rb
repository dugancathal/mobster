require 'spec_helper'
require 'time'

describe Mobster::Helpers do
  let(:page) { double('Capybara page', evaluate_script: '') }

  it 'gets the browsers current timezone' do
    allow(page).to receive(:evaluate_script).with('new Date().toString().slice(-4, -1)').and_return('MDT')
    expect(current_timezone).to eq('MDT')
  end

  it 'returns the given time in the brower offset' do
    allow(page).to receive(:evaluate_script).with('new Date().getTimezoneOffset()').and_return(360)

    time = Time.parse('2014-04-16T12:00:00Z')
    format = '%l:%M %P'
    expect(time_in_browser_zone(time, format)).to eq('6:00 am')
  end
end
