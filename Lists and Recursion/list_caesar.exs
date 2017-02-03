# Exercise: ListsAndRecursion-3
# An Elixir single-quoted string is actually a list of
# individual character codes. Write a caesar(list, n)
# function that adds n to each list element, wrapping
# if the addition results in a character greater than z.
# iex> MyList.caesar('ryvkve', 13) ?????? :)

defmodule MyList do
  def caesar([], n), do: []
  def caesar([head | tail], n) when (head + n) > ?z  do
    over_flow = (head + n) - ?z
    [(?a - 1) + over_flow | caesar(tail, n)]
  end
  def caesar([head | tail], n), do: [ head + n | caesar(tail, n)]
end

# After trying things out in iex I figured out 'z'is 122 'a' is 97
#  you can use ?z and ?a to get 122 and 97 repectively.
