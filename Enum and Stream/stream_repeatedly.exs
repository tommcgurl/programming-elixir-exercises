# This is an example of using Stream.repeatedly
# Streams - Lazy Enumerables page 102

# Stream.repeatedly takes a function and invokes it each time a new value is wanted.

Stream.repeatedly(fn -> true end)
  |> Enum.take(3)
  |> IO.inspect
# [true, true, true]

Stream.repeatedly(&:random.uniform/0)
  |> Enum.take(3)
  |> IO.inspect
