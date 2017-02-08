# Splits the enumerable into two enumerables, leaving count elements in the first
# one.
#
# Be aware that a negative count implies the enumerable will be enumerated twice:
# once to calculate the position, and a second time to do the actual splitting.

defmodule MyList do
  defp _split([], count, currentList, currentCount) when currentCount <= count, do: {currentList, []}
  defp _split([], _count, currentList, _currentCount), do: currentList
  defp _split([head | tail], count, currentList, currentCount) when currentCount === count do
    {currentList ++ [head], _split(tail, count, [], currentCount + 1)}
  end
  defp _split([head | tail], count, currentList, currentCount) do
    _split(tail, count, (currentList ++ [head]), currentCount + 1)
  end
  def split(list, count) when count > 0 do
    _split(list, count, [], 1)
  end
  def split(list, 0), do: {[], list}
  def split(list, count) when count < 0 do
    split(list, max(0, (length(list) + count)))
  end
end
