module Mobster
  module Helpers
    def current_timezone
      page.evaluate_script('new Date().toString().slice(-4, -1)')
    end

    def time_in_browser_zone(time, format)
      browser_offset_in_minutes = -page.evaluate_script('new Date().getTimezoneOffset()')
      adjusted_time = time + (browser_offset_in_minutes * 60)
      adjusted_time.strftime(format).strip
    end
  end
end
