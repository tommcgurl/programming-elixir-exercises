# Exercise: ListsAndRecursion-0
# I defined our sum function to carry a partial total as a second
# parameter so I could illustrate how to use accumulators to build values.
# The sum function can also be written without an accumulator.
# Can you do it?

defmodule MyList do
  def sum([ head | [] ]), do: head
  def sum([ head | [ next_head | tail ] ]), do: sum [ head + next_head | tail ]
end

# Rather than use an accumulator we simple add the head with the first values
# from the tail (or the next_head). We then call "sum" on the remaining part of
# the tail.
