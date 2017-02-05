# This is an example of creating a Struct

defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

s1 = %Subscriber{}
IO.inspect s1 # %Subscriber{name: "", paid: false, over_18: true}

s2 = %Subscriber{ name: "Tom"}
IO.inspect s2 # %Subscriber{name: "Tom", paid: false, over_18: true}

s3 = %Subscriber{ name: "Ginger", paid: true }
IO.inspect s3 # %Subscriber{name: "Ginger", paid: true, over_18: true}
