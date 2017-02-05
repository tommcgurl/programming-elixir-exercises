# This is an example of adding struct-specific behaviour.
# Updating a Map page 81

defmodule Attendee do
  defstruct name: "", paid: false, over_18: true

  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%Attendee{name: name}) when name != "" do
    IO.puts "Very cheap badge for #{name}"
  end

  def print_vip_badge(%Attendee{}) do
    raise "Missing name for badge"
  end

end

a1 = %Attendee{name: "Tom", over_18: true }
IO.inspect Attendee.may_attend_after_party a1 # false

a2 = %Attendee{a1 | paid: true}
IO.inspect Attendee.may_attend_after_party a2 # true

Attendee.print_vip_badge a2 # Very cheap badge for Tom

a3 = %Attendee{}
Attendee.print_vip_badge a3 # RuntimeError missing name for badge
