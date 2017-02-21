# Exercise: ListsAndRecursion-5

# Takes the first count items from the enumerable.

# count must be an integer. If a negative count is given, the last count values
# will be taken. For such, the enumerable is fully enumerated keeping up to 2 *
# count elements in memory. Once the end of the enumerable is reached, the last
# count elements are returned.

defmodule MyList do
  def take([], _count), do: []
  def take(_list, 0), do: []
  def take(list, count) when count < 0 do
    Enum.reverse(list) # Reverse the list to take from it backwards.
      |> take(count * -1)
      |> Enum.reverse # Reverse the result to get the list back in order
  end
  def take([head | tail], count) do
    [head] ++ take(tail, count - 1)
  end
end
