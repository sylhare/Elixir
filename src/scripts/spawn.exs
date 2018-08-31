# elixir lib/spawn.exs
defmodule Spawn do
    def greet() do
        receive do
            {sender, message} ->
                send(sender, {:ok, "Hello #{message}"})
        end
    end
end

pid = spawn(Spawn, :greet, [])
send(pid, {self(), "World!"})

receive do
    {:ok, message} ->
        IO.puts message
end