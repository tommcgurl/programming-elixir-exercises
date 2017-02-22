# These are examples of using comprehensions on bits.
# Comprehensions page 108

# The generator is enclosed in << and >>, indicating a binary. In the first
# case, the do block returns the integer code for each character, so the
# resulting list is [104, 101, 108, 108, 111], which iex displays as 'hello'.
(for << ch <- "hello" >>, do: ch)
  |> IO.inspect # 'hello'

# Here we convert the code back into a string
(for << ch <- "hello" >>, do: <<ch>>)
  |> IO.inspect # ["h", "e", "l", "l", "o"]

# Convert string into the octal representation of its characters.
(for << << b1::size(2), b2::size(3), b3::size(3) >> <- "hello" >> do
  "0#{b1}#{b2}#{b3}"
end)
  |> IO.inspect
