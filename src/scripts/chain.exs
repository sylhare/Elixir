# elixir -r lib/chain.exs -e "Chain.run(10)"
# To crank up the number of process
# elixir --erl "+P 1000000" -r lib/chain.exs -e "Chain.run(1_000_000)"
defmodule Chain do
  def counter(next_pid) do
    receive do
      n ->
        send next_pid, n + 1
    end
  end

  def create_processes(num) do
    last = Enum.reduce 1..num,
                       self(),
                       fn (_, send_to) ->
                         spawn(Chain, :counter, [send_to])
                       end
    send last, 0

    receive do
      final_answer when is_integer(final_answer) ->
        "Results is #{inspect(final_answer)}"
    end
  end

    
  def run(num) do
    IO.puts inspect :timer.tc(Chain, :create_processes, [num])
  end
end
