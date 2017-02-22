# These are examples of comprehensions.
# Comprehensions page 107

# Comprehensions allow you to do things like filter and map a collection
# all at onece.

(for x <- [1, 2, 3, 4, 5], do: x * x)
  |> IO.inspect # [1 ,4, 9, 16, 25]

(for x <- [1, 2, 3, 4, 5], x < 4, do: x * x)
  |> IO.inspect #[1, 4, 9]

# Variables matched in the pattern are available to the rest of the comprehension.
# For two generators, the operations are nested

# x <- [1, 2], y <- [5, 6]

# will run the rest of the comprehension with
# x=1, y=5; x=1, y=6; x=2, y=5; and x=2, y=6. We can use those values of x and y in the do block.
# Just like a nested loop.

(for x <- [1, 2], y <- [5,6], do: x * y)
  |> IO.inspect # [5, 6, 10, 12]

(for x <- [1, 2], y <- [5, 6], do: {x, y})
  |> IO.inspect # [{1, 5}, {1, 6}, {2, 5}, {2, 6}]

# You can use variables from generators in later generators.

min_maxes = [{1, 4}, {2, 3}, {10, 15}]

(for {min, max} <- min_maxes, n <- min..max, do: n)
  |> IO.inspect # [1, 2, 3, 4, 2, 3, 10, 11, 12, 13, 14, 15]

# Here we use a filter to list pairs from 1 to 8 whose product is a multiple of 10.
# We use two generators and two filters.
# The first filter only allows pairs in which the firts number is >= to the second.
# (this is so we don't count pairs twice)
# The second filter checks to see if the product is a multiple of 10

# The first filter will cut the iteration short, so the second filter only runs 36 times
# instead of 64 (8 * 8) 8 being the length of the list
first8 = [1, 2, 3, 4, 5, 6, 7, 8]
(for x <- first8, y <- first8, x >= y, rem(x*y, 10) === 0, do: {x, y})
  |> IO.inspect # [{5, 2}, {5, 4}, {6, 5}, {8, 5}]

# We can use the first term in a generator to deconstruct data.
# This comprehension swaps the keys and values in a keyword list.
reports = [ dallas: :hot, minneapolis: :cold, dc: :muggy, la: :smoggy ]
(for {city, weather} <- reports, do: {weather, city})
  |> IO.inspect # [hot: :dallas, cold: :minneapolis, muggy: :dc, smoggy: :la]
