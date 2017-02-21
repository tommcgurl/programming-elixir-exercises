# Exercise: ListsAndRecursion-5

# Invokes the given fun for each item in the enumerable. It stops the iteration
# at the first invocation that returns false or nil. It returns false if at least
# one invocation returns false or nil. Otherwise returns true.

defmodule MyList do
  def all?([], _suspect), do: true
  def all?([suspect | tail], suspect), do: all?(tail, suspect)
  def all?( _, _suspect), do: false
end
