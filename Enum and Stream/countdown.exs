# This is an example of using Stream.reource to create a timer that counts down
# the number of seconds until the start of the next minute.
# Streams - Lazy Enumerables page 103

# The allocation function returns the number of seconds left until the next minute
# starts. It does this each time the stream is evaluated, so we’ll get a countdown
# that varies depending on when it is called.

# This is clearly not great code, as it fails to correct the sleep time for any
# delays introduced by our code. But it illustrates a very cool point. Lazy
# streams let you deal with resources that are asynchronous to your code, and the
# fact that they are initialized every time they are used means they’re effectively
# side-effect-free. Every time we pipe our stream to an Enum function, we get a
# fresh set of values, computed at that time.


defmodule Countdown do
  def sleep(seconds) do
    receive do
      after seconds*1000 -> nil
    end
  end

  def say(text) do
    spawn fn -> :os.cmd('say #{text}')  end
  end

  def timer do
    Stream.resource(
      fn ->
        {_h, _m, s} = :erlang.time
        60 - s - 1
      end,
      fn
        0 -> # Some pattern matching here
          {:halt, 0}
        count -> # If count is no 0 wait a second
          sleep(1)
          # Essentioallly strigifyies the count
          # Then the function is invoked again with count - 1
          { [inspect(count)], count-1 }
      end,
      fn _ -> nil end # We don't need to do any clean up here.
    )
  end
end
