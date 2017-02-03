defmodule MyList do
  def add_one([]), do: []
  def add_one([head | tail]), do: [ head + 1 | add_one(tail) ]
end
