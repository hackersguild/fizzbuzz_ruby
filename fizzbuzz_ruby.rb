require "minitest/autorun"
class FizzbuzzTest < MiniTest::Unit::TestCase
	def test_print_1_to_100
		assert_equal fizzbuzz.count, 100
	end

	def test_1_when_1
		assert_equal 1, fizzbuzz[0]
	end
	
	def test_fizz
		assert_equal "Fizz", fizzbuzz[2]
		assert_equal "Fizz", fizzbuzz[5]
	end

	def test_buzz
		assert_equal "Buzz", fizzbuzz[4]
		assert_equal "Buzz", fizzbuzz[9]
    end

    def test_fizzbuzz
    	assert_equal "FizzBuzz", fizzbuzz[14]
    	assert_equal "FizzBuzz", fizzbuzz[29]
    end
   end

def fizzbuzz
	fizzbuzz_ary = (1..100).to_a 
	fizzbuzz_ary.map do |num|
		if num % 15 == 0
			num = 'FizzBuzz'
		elsif num % 3 == 0 
			num = 'Fizz'
		elsif num % 5 == 0
			num = "Buzz"
		else
			num
		end
	end

end
puts fizzbuzz