# This is an example of using Stream.resource
# Streams - Lazy Enumerables page 103

# Stream.resource builds upon Stream.unfold. It makes two changes.
# The first argument to unfold is the initial value to be passed to the iteration
# function. But if that value is a resource, we don’t want to open it until the
# stream starts delivering values, and that might not happen until long after we
# create the stream. To get around this, resource takes not a value, but a
# function that returns the value. That’s the first change.
# Second, when the stream is done with the resource, we may need to close it.
# That’s what the third argument to Stream.resource does—it takes the final
# accumulator value and does whatever is needed to deallocate the resource.

Stream.resource(fn -> File.open!("sample") end,
  fn file ->
    case IO.read(file, :line) do
      data when is_binary(data) -> {[data], file}
    end
  end,
  fn file -> File.close(file) end)

# The first function opens the file when the stream becomes active, and passes
# it to the second function. This reads the file, line by line, returning either
# a line and the file as a tuple, or a :halt tuple at the end of the file. The
# third function closes the file.
