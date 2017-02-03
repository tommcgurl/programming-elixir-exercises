# An example of keeping track of values during recursion and using private functions.
#  Keeping Track of Values During Recursion page 67
defmodule MyList do
  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([ head | tail ], total), do: _sum(tail, head + total)
end
