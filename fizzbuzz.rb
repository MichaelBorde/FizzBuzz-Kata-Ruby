class FizzBuzz
  def enumerate()
    raw_numbers = (1..100).to_a
    return raw_numbers.collect {|element| to_fizzbuzz(element)}
  end
  
  private
  def to_fizzbuzz(number)
    numberIsMultipleOf = MULTIPLE.curry[number]
    return "fizzbuzz" if numberIsMultipleOf.(15)
    return "fizz" if numberIsMultipleOf.(3)
    return "buzz" if numberIsMultipleOf.(5)
    return number.to_s
  end
   
  MULTIPLE = lambda {|multiple, number| multiple % number == 0}
end