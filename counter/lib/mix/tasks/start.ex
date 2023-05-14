defmodule Mix.Tasks.Start do
  use Mix.Task
  def run(_), do: Family.run(0)
  end
