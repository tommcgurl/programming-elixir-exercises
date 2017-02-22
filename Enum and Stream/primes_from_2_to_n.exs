# Exercise: ListsAndREcursion-7

# In the last exercise of Chapter 7, Lists and Recursion, on page 65, you wrote
# a span function. Use it and list comprehensions to return a list of the prime
# numbers from 2 to n.

defmodule MyList do
  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]
  defp _isPrime(n) do
    # It's sufficient enough to only check up to n's square root
    sqrtn = round(:math.sqrt(n))
    (for x <- span(2, sqrtn), rem(n, x) === 0, into: %{:found => true}, do: {:found, false})
      |> Map.get(:found)
  end
  def primes_from_2_to_n(n) do
    (for x <- span(2,n), _isPrime(x), do: x )
  end
end
