# Exercise: ModulesAndFunctions-1

# Extend the Times module with a triple function that multiplies its parameter by three.


# Exercise: ModulesAndFunctions-2

# Run the result in iex. Use both techniques to compile the file.

# The two ways to compile are
# 1) iex times.exs
# 2) once inside iex, run the command
#      c "times.exs"

# Exercies: ModulesAndFunctions-3

# Add a quadruple function. (Maybe it could call the double function...)

defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3 # ModulesAndFunctions-1
  def quadruple(n), do: double(n) * 2 # ModulesAndFunctions-3
end
