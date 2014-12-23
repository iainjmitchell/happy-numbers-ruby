require 'test/unit'

class TestHappyNumbers < Test::Unit::TestCase
	def test_happy_numbers
		[1, 7, 10, 49, 931, 998].each do |happy_number|
			assert_equal Mathematician.new.is_happy?(happy_number), true, 
				"#{happy_number} should be happy"
		end
	end

	def test_sad_numbers
		[2, 3, 4, 9, 12, 339, 567, 654].each do |sad_number|
			assert_equal Mathematician.new.is_happy?(sad_number), false, 
				"#{sad_number} should be sad"
		end
	end
end

class Mathematician
	HAPPY_NUMBER = 1

	def is_happy?(number)
		digits = DigitsFactory.create(number)
		squared = square_digits(digits)
		return squared == HAPPY_NUMBER unless squared > 9
		return is_happy? squared
	end

	def square_digits(digits)
		head, *tail = digits
		squared = head * head
		return squared + square_digits(tail) unless tail.empty?	
		return squared
	end
end	

class DigitsFactory
	def self.create(number)
		digits = []
		remaining = number
		while(remaining > 0) do 
			digit = remaining % 10
			remaining = (remaining / 10).floor
			digits.push(digit)
		end
		return digits
	end 
end