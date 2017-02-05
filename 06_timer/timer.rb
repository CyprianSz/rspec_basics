class Timer
	attr_accessor :timer, :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
		hours=(@seconds/3600)
		hours_string=hours.to_s
		if hours_string.length==1
			hours_string="0"+hours_string
		end
		
		minutes=(@seconds%3600)/60
		minutes_string=minutes.to_s
		if minutes_string.length==1
			minutes_string="0"+minutes_string
		end
		
		sec=(@seconds%3600)%60
		sec_string=sec.to_s
		if sec_string.length==1
			sec_string="0"+sec_string
		end

		"#{hours_string}:#{minutes_string}:#{sec_string}"
  end
end
