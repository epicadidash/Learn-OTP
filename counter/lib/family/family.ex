defmodule Family do

alias Counter.Core, as: He
def run(5) do
  new_count = He.inc(5)
  :timer.sleep(1000)
  IO.puts("Papa")
  run(new_count)
end
def run(10) do
  new_count = He.inc(10)
  :timer.sleep(1000)
  IO.puts("Mama")
  run(new_count)
end
def run(15) do
  new_count = He.inc(15)
  :timer.sleep(1000)
  IO.puts("Somu")
  run(new_count)
end
def run(count) do
  new_count = He.inc(count)
  :timer.sleep(1000)
  IO.puts("Counter is #{new_count}")
  run(new_count)
  end
end
