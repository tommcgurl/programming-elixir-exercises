# These are examples of comprehensions that return maps.
# Comprehensions page 109

# You can use the into: parameter to return a map from a comprehension.

(for x <- ~w{ cat dog }, into: %{}, do: {x, String.upcase(x)})
  |> IO.inspect # %{ "cat" => "CAT", "dog" => "DOG"}

# You an also use Map.new
# Note: ~w{ cat dog } simply creates a list with the values "cat" and "dog"
# i.e. ["cat", "dog"]
(for x <- ~w{ cat dog }, into: Map.new, do: {x, String.upcase(x)})
  |> IO.inspect # %{ "cat" => "CAT", "dog" => "DOG"}

# You can also add to and existing collection

(for x <- ~w{ cat dog }, into: %{"ant" => "ANT"}, do: {x, String.upcase(x)})
  |> IO.inspect # %{ "ant" => "ANT", "cat" => "CAT", "dog" => "DOG"}

# The into: option takes anything that implements the Collectable protocol.
# This includes ists, binaries, functions, maps, files, hash dicts,
# hash sets, and IO streams

(for x <- ~w{ cat dog }, into: IO.stream(:stdio, :line), do: "<<#{x}>>\n")
  |> IO.inspect
  # <<cat>>
  # <<dog>>
  # %IO.Stream{device: :standard_io, line_or_bytes: :line, raw: false}
