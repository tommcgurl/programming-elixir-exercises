# An example of implementing the map function for MyList
# Creating a Map Function page 65
defmodule MyList do
  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]
end
