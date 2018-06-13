defmodule HexperTest do
  use ExUnit.Case
  doctest Hexper

  test "greets the world" do
    assert Hexper.hello() == :world
  end
end
