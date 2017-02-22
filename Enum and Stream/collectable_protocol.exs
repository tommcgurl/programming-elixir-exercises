# These are examples of using a Collectable to construct a list.
# Comprehensions page 106

Enum.into(1..5, [])
  |> IO.inspect # [1, 2, 3, 4, 5]

# New elements are added to the end of non-empty lists
Enum.into(1..5, [100, 101])
  |> IO.inspect # [100, 101, 1, 2, 3, 4, 5]

# Output streams are collectable.
# This code lazily copies standard input to standard Output
Enum.into(IO.stream(:stdio, :line), IO.stream(:stdio, :line))
  |> IO.inspect
