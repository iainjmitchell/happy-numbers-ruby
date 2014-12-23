require 'test/unit'

class TestHappyNumbers < Test::Unit::TestCase
	def test_something
		assert_equal true, true	
	end

	def test_1_is_happy
		assert Mathematician.new.is_happy?(1)
	end
end

class Mathematician
	def is_happy?(number)
		true
	end
end	