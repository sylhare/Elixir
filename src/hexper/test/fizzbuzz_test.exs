# mix test.watch
defmodule FizzBuzzTest do
  use ExUnit.Case

  import FizzBuzz

  test "numbers not divisible by 3 or 5 should return the number" do
    assert fizzbuzz(1) == 1
    assert fizzbuzz(11) == 11
  end
    
  test "3 should return Fizz" do
    assert fizzbuzz(3) == "Fizz"
    assert fizzbuzz(9) == "Fizz"
  end
    
  test "multiples of 5 should return Buzz" do
    assert fizzbuzz(5) == "Buzz"
    assert fizzbuzz(20) == "Buzz"
  end
    
  test "multiples of 3 and 5 should return fizzbuzz" do
    assert fizzbuzz(15) == "FizzBuzz"
    assert fizzbuzz(45) == "FizzBuzz"
  end
    
  # For the other functions for coverage 
  test "OTHER: numbers not divisible by 3 or 5 should return the number" do
    assert fizzbuzzing(1) == 1
    assert fizzbuzzed(11) == 11
  end
    
  test "OTHER: 3 should return Fizz" do
    assert fizzbuzzing(3) == "Fizz"
    assert fizzbuzzed(9) == "Fizz"
  end
    
  test "OTHER: multiples of 5 should return Buzz" do
    assert fizzbuzzing(5) == "Buzz"
    assert fizzbuzzed(20) == "Buzz"
  end
    
  test "OTHER: multiples of 3 and 5 should return fizzbuzz" do
    assert fizzbuzzing(15) == "FizzBuzz"
    assert fizzbuzzed(45) == "FizzBuzz"
  end

end