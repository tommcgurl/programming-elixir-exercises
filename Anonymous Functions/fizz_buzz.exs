
# Exercise: Functions-2 (Anonymous Functions page 37)

# Write a function that takes three arguments.
# If the first two are zero, return “FizzBuzz.”
# If the first is zero, return “Fizz.”
# If the second is zero, return “Buzz.”
# Otherwise return the third argument.
# Do not use any lan- guage features that we haven’t yet covered in this book.

fizz_buzzer = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, a) -> a
end

IO.puts fizz_buzzer.(0, 0, 4) # FizzBuzz

IO.puts fizz_buzzer.(0, 5, 4) # Fizz

IO.puts fizz_buzzer.(0, 0, 7) # FizzBuzz

IO.puts fizz_buzzer.(3, 0, 7) # Buzz

IO.puts fizz_buzzer.(3, 9, 7) # 7

# Exercise: Functions-3

# The operator rem(a, b) returns the remainder after dividing a by b.
# Write a function that takes a single integer (n) and calls the function
# in the previous exercise, passing it rem(n,3), rem(n,5), and n.
# Call it seven times with the arguments 10, 11, 12, and so on.
# You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.” 

fizz_buzz = fn n -> fizz_buzzer.(rem(n,3), rem(n,5), n) end

IO.puts fizz_buzz.(10) # Buzz

IO.puts fizz_buzz.(11) # 11

IO.puts fizz_buzz.(12) # Fizz

IO.puts fizz_buzz.(13) # 13

IO.puts fizz_buzz.(14) # 14

IO.puts fizz_buzz.(15) # FizzBuzz

IO.puts fizz_buzz.(16) # 16
