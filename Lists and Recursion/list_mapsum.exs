# Exercise ListsAndRecursion-1
# Write a mapsum function that takes a list and a function.
# It applies the function to each element of the list and
# then sums the result, so
# iex> MyList.mapsum [1, 2, 3], &(&1 * &1) 14

defmodule MyList do
  def mapsum(list, func), do: _mapsum(list, func, 0)
  defp _mapsum([], _func, accumulator), do: accumulator
  defp _mapsum([ head | tail], func, accumulator) do
    _mapsum(tail, func, accumulator + func.(head))
  end
end
