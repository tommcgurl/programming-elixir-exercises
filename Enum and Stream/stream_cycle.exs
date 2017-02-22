# This is an example of using Stream.cycle
# Streams - Lazy Enumerables page 102

# Stream.cycle takes an enumerable and returns an infinite stream
# containing that enumerable’s elements. When it gets to the end,
# it repeats from the beginning, indefinitely. Here’s an example
# that generates the rows in an HTML table with alternating green
# and white classes:

Stream.cycle(~w{ green white })
  |> Stream.zip(1..5)
  |> Enum.map(fn {class, value} ->
      ~s{<tr class="#{class}"><td>#{value}</td></tr>\n}
     end)
  |> IO.puts
