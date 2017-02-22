# This is an example of using Streams to find the longes word
# in a user's local dictionary
# Stream - Lazy Enumerables page 101

IO.puts File.open!("/usr/share/dict/words")
  |> IO.stream(:line)
  |> Enum.max_by(&String.length/1)

# The above reades the file line by line using a Stream.
# There is a shortcut for this command as well.

IO.puts File.stream!("/usr/share/dict/words")
  |> Enum.max_by(&String.length/1) 
