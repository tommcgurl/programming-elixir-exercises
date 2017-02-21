# Exercise: ListsAndRecursion-6

# Flattens the given list of nested lists. The list tail will be added at the end
# of the flattened list.

# e.g. List.flatten([1, [[2], 3]], [4, 5]) === [1, 2, 3, 4, 5]

defmodule MyList do
  def flatten([head | []]), do: flatten(head)
  def flatten([head | tail]) do
    flatten(head) ++ flatten(tail)
  end
  def flatten(head), do: [head]
end
