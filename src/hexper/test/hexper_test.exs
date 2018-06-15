defmodule HexperTest do
  use ExUnit.Case
  doctest Hexper

  test "basic hello test" do
    assert Hexper.hello() == :world
  end
    
  test "greets the world" do
    assert Hexper.greet("world") == "Hello world"
  end
    
end
