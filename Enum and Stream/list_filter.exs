# Exercise: ListsAndRecursion-5

# Filters the enumerable, i.e. returns only those elements for which fun returns
# a truthy value.

defmodule MyList do
  def filter([], _func), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head] ++ filter(tail, func)
    else
      filter(tail, func)
    end
  end
end
