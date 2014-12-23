require 'test/unit'

class TestHappyNumbers < Test::Unit::TestCase
	def test_happy_numbers
		[1, 10].each do |happy_number|
			assert_equal Mathematician.new.is_happy?(happy_number), true
		end
	end

	def test_sad_numbers
		[2, 3].each do |sad_number|
			assert_equal Mathematician.new.is_happy?(sad_number), false
		end
	end
end

class Mathematician
	def is_happy?(number)
		digits = to_digits(number)
		return square_digits(digits) == 1
	end

	def square_digits(digits)
		head, *tail = digits
		return head * head if (tail.length == 0)
		return head * head + square_digits(tail)
	end

	def to_digits(number)
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