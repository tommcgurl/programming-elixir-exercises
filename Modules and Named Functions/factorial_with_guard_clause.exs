# An example of using a guard clause (Modules and Named Functions page 48)

defmodule factorial do
  def of(0), do: 1
  def of(n) when n > 0 do
    n * of(n -1)
  end
end
