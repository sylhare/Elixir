defmodule FactorTest do
  use ExUnit.Case
  doctest Factor
    
  test "Factor of 0 is 0" do
    assert Factor.of(0) == 0
  end

  test "Factor of 1 is 1" do
    assert Factor.of(1) == 1
  end
    
  test "Factor of 3 is 6" do
    assert Factor.of(3) == 6
  end
    
end