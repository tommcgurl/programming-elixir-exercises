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
