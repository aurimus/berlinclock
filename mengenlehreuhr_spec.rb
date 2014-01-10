require File.join(File.dirname(__FILE__), 'mengenlehreuhr')

describe Mengenlehreuhr do

	it 'should convert string to time' do
		mt = Mengenlehreuhr.new('00:00:00')
		expect(mt.time).to be_kind_of(Time)
	end

	it 'should convert 00:00:00 to mengenlehreuhr time' do
		mt = Mengenlehreuhr.new('00:00:00')

		expect(mt.on).to eq(1)
		expect(mt.hours).to eq(0)
		expect(mt.hours5).to eq(0)
		expect(mt.min).to eq(0)
		expect(mt.min5).to eq(0)

		expect(mt.mengenlehreuhr_string).to eq('X-OOOO-OOOO-OOOOOOOOOOO-OOOO')
	end	

	it 'should convert 13:17:01 to mengenlehreuhr time' do
		mt = Mengenlehreuhr.new('13:17:01')
		expect(mt.mengenlehreuhr_string).to eq('O-XXOO-XXXO-XXXOOOOOOOO-XXOO')
	end

	it 'should convert 23:59:59 to mengenlehreuhr time' do
		mt = Mengenlehreuhr.new('23:59:59')
		expect(mt.mengenlehreuhr_string).to eq('O-XXXX-XXXO-XXXXXXXXXXX-XXXX')
	end

	it 'should convert 24:00:00 to mengenlehreuhr time' do
		mt = Mengenlehreuhr.new('24:00:00')
		expect(mt.mengenlehreuhr_string).to eq('X-OOOO-OOOO-OOOOOOOOOOO-OOOO')
	end

end
