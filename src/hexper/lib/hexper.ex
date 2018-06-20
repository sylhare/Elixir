defmodule Hexper do
  @moduledoc """
  Hexper say Hello World
  """

  @doc """
  Demo function when you create a mix package.

  ## Example

      iex> Hexper.hello
      :world

  """
  def hello do
    :world
  end

  @doc """
  The one hello world function.
  It can even say hello to anyone ;)

  ## Examples

      iex> Hexper.greet("world")
      "Hello world"

  """
  def greet(word) do
    "Hello " <> word
  end
end
