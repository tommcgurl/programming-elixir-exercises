defmodule MyList do
  def all?([], _suspect), do: true
  def all?([suspect | tail], suspect), do: all?(tail, suspect)
  def all?( _, _suspect), do: false
end
