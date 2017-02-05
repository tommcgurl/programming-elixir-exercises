# This is an example of how to update a map.

my_map = %{a: 1, b: 2, c: 3}
IO.inspect my_map

my_new_map = %{ my_map | b: "Two", c: "Three"}
IO.inspect my_new_map

my_newer_map = %{ my_new_map | a: "One"}
IO.inspect my_newer_map

# We cannot add a new key using the update syntax.
# Instead we should use Dict.put_new/3

my_newest_map = my_newer_map |> Dict.put_new(:d, "Four")
IO.inspect my_newest_map
