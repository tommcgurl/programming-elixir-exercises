# An example of implementing the reduce function for a list.
# Generalizing Our Sum Function page 68

defmodule MyList do
  def reduce([], accumulator, _func), do: accumulator
  def reduce([ head | tail ], accumulator, func) do
    reduce(tail, func.(accumulator, head), func) 
  end
end
