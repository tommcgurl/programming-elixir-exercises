# This is an example of using Stream.iterate
# Streams - Lazy Enumerables page 102

# Stream.iterate(start_value, next_fun) generates an infinite stream.
# The first value is start_value. The next value is generated by
# applying next_fun to this value. This continues for as long as the
# stream is being used, with each value being the result of applying
# next_fun to the previous value.

Stream.iterate(0, &(&1 + 1))
  |> Enum.take(5)
  |> IO.inspect
# [0, 1, 2, 3, 4]

Stream.iterate(2, &(&1 * &1))
  |> Enum.take(5)
  |> IO.inspect
# [2, 4, 16, 256, 65536]

Stream.iterate([], &[&1])
  |> Enum.take(5)
  |> IO.inspect
# [[], [[]], [[[]]], [[[[]]]], [[[[[]]]]]]