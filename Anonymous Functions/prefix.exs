# Exercise: Functions-4

# Write a function prefix that takes a string.
# It should return a new function that takes a second string.
# When that second function is called, it will return a string
# containing the first string, a space, and the second string.

prefix = fn pref -> (fn name -> "#{pref} #{name}" end) end
mrs = prefix.("Mrs")
mr = prefix.("Mr")
master = prefix.("Master")

IO.puts(mrs.("Smith")) # Mrs Smith
IO.puts(mr.("Anderson")) # Mr Anderson
IO.puts(master.("Chief")) # Master Chief
