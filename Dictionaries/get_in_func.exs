# This is an example of passing a function as a key to get_in
# and get_and_update_in
# Dynamic (Runtime) Nested Acessors page 84

authors = [
  %{ name: "José", language: "Elixer" },
  %{ name: "Evan", language: "Elm" },
  %{ name: "Larry", language: "Perl"}
]

languages_with_an_r = fn (:get, collection, next_fn) ->
  for row <- collection do
    if String.contains?(row.language, "r") do
      next_fn.(row)
    end
  end
end

languages_with_a_capital_e = fn (:get, collection, next_fn) ->
  for row <- collection do
    if String.contains?(row.language, "E") do
      next_fn.(row)
    end
  end
end

IO.inspect get_in(authors, [languages_with_an_r, :name])
# ["José", nil, "Larry"]

IO.inspect get_in(authors, [languages_with_a_capital_e, :name])
# ["José", "Evan", nil]
