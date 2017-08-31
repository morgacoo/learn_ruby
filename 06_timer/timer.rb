class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = @seconds

    #converting the seconds
    hour = time/3600
    min = (time % 3600) / 60 #dividing the left over after creating hours by an add'l 60 to get min.
    sec = (time % 3600) % 60 #taking the remainder of the min remainder

    if hour < 10 then hour = "0#{hour}" end
    if min < 10 then min = "0#{min}" end
    if sec < 10 then sec = "0#{sec}" end

      return "#{hour}:#{min}:#{sec}"

  end
end
