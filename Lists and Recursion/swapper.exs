# An example of processing more than one element of a list at a time.
# More Complex List Patterns page 69

defmodule Swapper do
  def swap([]), do: []
  def swap([_]), do: raise "Can't swap a list with odd number of elements."
  def swap([a, b | tail]), do: [b, a | swap(tail)]
end
