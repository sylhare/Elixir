# iex -S mix
# iex> Fib.of(10)
defmodule Factor do
  @moduledoc """
  Return the factorized number
      
  Decomposition of a number:

      3 ~> 1, 2, 3

  Factorization of three - or 3! in math

      3! = 1 x 2 x 3
      3! = 6
  """

  @doc """
  Will factor each number until the input one.
  

  ## Example
    
  For example Factor of 3 is: `1 x 2 x 3 = 6`:

      iex> Factor.of(3)
      6

  """
  def of(num), do: _of(num) 
  defp _of(0), do: 0   
  defp _of(1), do: 1  
  defp _of(num), do: num * _of(num - 1)
    
end