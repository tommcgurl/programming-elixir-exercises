defmodule MyList do
  def each([head | []], func), do: func.(head)
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end
end
