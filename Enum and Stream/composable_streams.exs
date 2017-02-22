# This is an examples of composing Streams
# Streams - Lazy Enumerables page 99

# Streams allow us to skip the process of creating intermediate
# lists along the way.

squares = Stream.map [1, 2, 3, 4], &(&1 * &1)

plus_ones = Stream.map squares, &(&1 + 1)

odds = Stream.filter plus_ones, &(rem(&1, 2) === 1)

result = Enum.to_list odds

IO.inspect result

# This can be writen in a nicer way using pipes
result = [1, 2, 3, 4]
  |> Stream.map(&(&1 * &1))
  |> Stream.map(&(&1 + 1))
  |> Stream.filter(&(rem(&1,2) === 1))
  |> Enum.to_list

IO.inspect result
