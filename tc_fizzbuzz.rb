require "test/unit"
require_relative "fizzbuzz"

class FizzBuzzTest < Test::Unit::TestCase
  def setup
    @buzzer = FizzBuzz.new
  end
  
  def test_can_enumerate  
    result =  @buzzer.enumerate
    
    assert_equal(100, result.length)
  end
  
  def test_can_say_basic_numbers
    result = @buzzer.enumerate
    
    assert_equal("1", result[0])
    assert_equal("2", result[1])
  end
    
  def test_can_say_fizzbuzz
    result = @buzzer.enumerate
    
    assert_equal("fizz", result[2])
    assert_equal("buzz", result[4])
    assert_equal("fizzbuzz", result[14])
  end
end
