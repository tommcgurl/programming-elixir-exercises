# This is an example of using Stream.unfold
# Streams - Lazy Enumerables page 103

# You supply an initial value and a function. The function uses the argument to
# create two values, returned as a tuple. The first is the value to be returned
# by this iteration of the stream, and the second is the value to be passed to
# the function on the next iteration of the stream. If the function returns nil,
# the stream terminates.

# This sounds abstract, but unfold is quite useful—it is a general way of
# creating a potentially infinite stream of values where each value is some
# function of the previous state.
# The key is the generating function. Its general form is
# fn state -> { stream_value, new_state } end

# Fibonacci sequence
Stream.unfold({0,1}, fn {f1, f2} -> {f1, {f2, f1 + f2}} end)
  |> Enum.take(15)
  |> IO.inspect
