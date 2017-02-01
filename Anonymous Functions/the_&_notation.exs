# Exercise: Functions-5

# Rewrite the following
# Enum.map [1,2,3,4], fn x -> x +2 end
# Enum.map [1,2,3,4], fn IO.inspect(x)  end

plus_two = Enum.map [1,2,3,4], &(&1 + 2)

Enum.map [1,2,3,4],  &(IO.inspect(&1))
# 1
# 2
# 3
# 4

IO.inspect plus_two # [2,4,5,6]
