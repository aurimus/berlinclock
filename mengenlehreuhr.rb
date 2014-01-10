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
  	"#{to_s @on, 1}-#{to_s @hours5}-#{to_s @hours}-#{to_s @min5, 11}-#{to_s @min}"
  end

  def to_s(num, total = 4)
  	str = ''
  	num.times { str << 'X' }
  	(total - num).times {str << 'O'}
  	str
  end

end

puts Mengenlehreuhr.new.mengenlehreuhr_string