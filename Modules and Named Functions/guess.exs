# Exercise: ModulesAndFunctions-6

# I’m thinking of a number between 1 and 1000....
# The most efficient way to find the number is to guess halfway between
# the low and high numbers of the range. If our guess is too big, then
# the answer lies between the bottom of the range and one less than our guess.
# If our guess is too small, then the answer lies between one more than our
# guess and the end of the range.
#
# Your API will be guess(actual, range), where range is an Elixir range.
# Your output should look similar to this:
#     iex> Chop.guess(273, 1..1000)
#     Is it 500
#     Is it 250
#     Is it 375
#     Is it 312
#     Is it 281
#     Is it 265
#     Is it 273
#     273
# Hints:
# – You may need to implement helper functions with an additional parameter
# (the currently guessed number).
# – The div(a,b) function performs integer division.
# – Guard clauses are your friends.
# – Patterns can match the low and high parts of a range (a..b=4..8).

defmodule Chop do
  defp _guess(actual, current_guess, _low..high) when (actual > current_guess) do
    IO.puts "Is it #{current_guess}"
    new_guess = div((current_guess + high), 2)
    _guess(actual, new_guess, (current_guess + 1)..high)
  end
  defp _guess(actual, current_guess, low.._high) when (actual < current_guess) do
    IO.puts("Is it #{current_guess}")
    new_guess = div((low + current_guess), 2)
    _guess(actual, new_guess, low..(current_guess - 1))
  end
  defp _guess(actual, actual, _range) do
    IO.puts("Is it #{actual}")
    actual
  end
  def guess(actual, low..high) do
    _guess(actual, div(high, 2), low..high)
  end
end
