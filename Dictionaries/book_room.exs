# This is an example of using pattern matching on a list of maps.
# Pattern Matching and Updating Maps page 78

defmodule HotelRoom do
  def people do
    [
      %{ name: "Grumpy", height: 1.24 },
      %{ name: "Dave", height: 1.88 },
      %{ name: "Dopey", height: 1.32 },
      %{ name: "Shaquille", height: 2.16 },
      %{ name: "Sneezy", height: 1.28 }
    ]
  end
  def book(%{name: name, height: height}) when height > 1.9 do
    IO.puts "Need extra long bed for #{name}"
  end
  def book(%{name: name, height: height}) when height < 1.3 do
    IO.puts "Need low shower controls for #{name}"
  end
  def book(%{name: name, height: _height}) do
    IO.puts "Need regurlar bed for #{name}"
  end
end

HotelRoom.people |> Enum.each(&HotelRoom.book/1)
