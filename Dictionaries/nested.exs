# This is an example of nesting dictionary structures
# Nested Dictionary Structures page 82

defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %{}, details: "", severity: 1
end

report = %BugReport{
  owner: %Customer{ name: "Tom", company: "Initech"},
  details: "Broken"
}

IO.inspect report.owner.company # Initech 

# To update the company the long way we could do
report = %BugReport{ report |
  owner: %Customer{ report.owner | company: "Initrode"}
}
IO.inspect report.owner.company # Initrode

# A better more concise way is to use the put_in/2
report = put_in(report.owner.company, "Chartbeat")
IO.inspect report.owner.company # Chartbeat

# We can use the update_in/2 function to apply a function
# to a value in a structure.
report = update_in(report.owner.name, &("Mr. #{&1}"))
IO.inspect report.owner.name # Mr. Tom
