# An example of using head and tail to build a list
# Lists and Recursion page 64

defmodule MyList do
  def square([]), do: []
  def square([head | tail]), do: [ head * head | square(tail) ]
end
