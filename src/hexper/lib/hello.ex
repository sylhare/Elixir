defmodule Hello do
  @moduledoc """
  Hello command line application
  Source: [Elixir command line app](http://asquera.de/blog/2015-04-10/writing-a-commandline-app-in-elixir/)
   
  ## Build

  Build with escript (specify in mix.exs):
   
      mix escript.build

  ## Example
    
      ./hello --name=world
      > Hello world
  """
    
  @doc"""

  main function of the cli

  ## Example

      iex> Hello.process()
      No arguments given
      :ok

  """    
  def main(args) do
    args |> parse_args |> process
  end

  @doc"""

  Default output for processing empty args

  ## Example

      iex> Hello.process([])
      No arguments given
      :ok

  """
  def process([]) do
    IO.puts "No arguments given"
  end

  @doc"""

  Process an args to say hello

  ## Example

      iex> Hello.process(['name'])
      Hello
      :ok

  """
  def process(options) do
    IO.puts "Hello #{options[:name]}"
  end
 
  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args,
      switches: [name: :string]
    )
    options
  end
end