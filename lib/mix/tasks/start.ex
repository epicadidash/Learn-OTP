defmodule Mix.Tasks.Start do
  use Mix.Task
  def run(_), do: Clock.start(fn(tick) -> IO.puts "The clock is ticking with #{tick}" end)
  end
