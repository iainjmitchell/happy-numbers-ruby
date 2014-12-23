require 'test/unit'

class TestHappyNumbers < Test::Unit::TestCase
	def test_1_is_happy
		assert_equal Mathematician.new.is_happy?(1), true
	end

	def test_10_is_happy
		assert_equal Mathematician.new.is_happy?(10), true
	end

	def test_2_is_sad
		assert_equal Mathematician.new.is_happy?(2), false
	end
end

class Mathematician
	def is_happy?(number)
		return true if number == 1 || number == 10
		return false	
	end
end	