# An example of processing a list to calculate the length of a list
defmodule MyList do
  def len([]), do: 0
  def len([ _ | tail]), do: 1 + len(tail)
end
