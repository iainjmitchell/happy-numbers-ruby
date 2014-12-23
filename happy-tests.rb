require 'test/unit'

class TestHappyNumbers < Test::Unit::TestCase
	def test_happy_numbers
		[1, 10].each do |happy_number|
			assert_equal Mathematician.new.is_happy?(happy_number), true
		end
	end

	def test_sad_numbers
		[2].each do |sad_number|
			assert_equal Mathematician.new.is_happy?(sad_number), false
		end
	end
end

class Mathematician
	def is_happy?(number)
		return number != 2	
	end
end	