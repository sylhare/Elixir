defmodule FizzBuzz do
  @moduledoc """
  Fizz buzz is a group word game for children to teach them about division.Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".

  ## Example

  For example, a typical round of fizz buzz would start as follows:

    1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16, 17, Fizz, 19, Buzz, Fizz, 22, 23, Fizz, Buzz, 26, Fizz, 28, 29, Fizz Buzz, 31, 32, Fizz, 34, Buzz, Fizz, ...

  """
    
    @doc """
    Defining a big method with every case enclosed. traditonnal
    """
    def fizzbuzzing(num) do
        cond do
          rem(num, 3) == 0 and rem(num, 5) ==  0 ->
            "FizzBuzz"
          rem(num, 3) == 0 ->
            "Fizz"
          rem(num, 5) == 0 ->
            "Buzz"
          true ->
            num
        end
    end
    
   @doc """
   Publically adding method to an existing one. 1 case one line
   """ 
   def fizzbuzzed(num) when rem(num, 3) == 0 and rem(num, 5) == 0, do: "FizzBuzz"
   def fizzbuzzed(num) when rem(num, 3) == 0, do: "Fizz"
   def fizzbuzzed(num) when rem(num, 5) == 0, do: "Buzz"
   def fizzbuzzed(num), do: num
   
   @doc """
   defp for adding private method. Elixir way.

   ## Example
 
       iex> FizzBuzz.fizzbuzz(3)
       "Fizz"
   """
   def fizzbuzz(num), do: _fizzbuzz(num, rem(num, 3), rem(num, 5))
   defp _fizzbuzz(_, 0, 0), do: "FizzBuzz"
   defp _fizzbuzz(_, 0, _), do: "Fizz"
   defp _fizzbuzz(_, _, 0), do: "Buzz"
   defp _fizzbuzz(num, _, _), do: num
    
end