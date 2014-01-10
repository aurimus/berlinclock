require 'active_support/all'

class Mengenlehreuhr
  attr_accessor :time, :on, :hours5, :hours, :min5, :min

  def initialize(time = Time.now)
  	time = time.to_time if time.is_a? String
  	@time = time
  	calc_mengenlehreuhr
  end

  def calc_mengenlehreuhr
  	@hours = @time.hour % 5
  	@hours5 = (@time.hour / 5).round

  	@min = @time.min % 5
  	@min5 = (@time.min / 5).round

  	@on = (@time.sec + 1) % 2
  end

  def mengenlehreuhr_string
  	"#{num_to_xo @on, 1}-#{num_to_xo @hours5}-#{num_to_xo @hours}-#{num_to_xo @min5, 11}-#{num_to_xo @min}"
  end

  def num_to_xo(num, total = 4)
  	str = ''
  	num.times { str << 'X' }
  	(total - num).times {str << 'O'}
  	str
  end

end

puts Mengenlehreuhr.new.mengenlehreuhr_string