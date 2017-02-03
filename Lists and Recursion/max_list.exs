# Exercise: ListsAndRecursion-2
# Write a max(list) that returns the element with the maximum
# value in the list. (This is slightly trickier than it sounds.)

defmodule MyList do
  def max([]), do: nil
  def max([head | tail]), do: _max(tail, head)
  defp _max([], current_max), do: current_max
  defp _max([head | tail], current_max) when current_max >= head do
    _max(tail, current_max)
  end
  defp _max([head | tail], current_max) when current_max < head do
    _max(tail, head)
  end
end
