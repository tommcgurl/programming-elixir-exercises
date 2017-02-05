nested = %{
  michael_bluth: %{
    actor: %{
      first: "Jason",
      last: "Bateman"
    },
    role: "Overseeing Bluth Company."
  },
  gob_bluth: %{
    actor: %{
      first: "Will",
      last: "Arnet"
    },
    role: "Magician"
  }
}

IO.inspect get_in(nested, [:michael_bluth])
#  %{ actor: %{first: "Jason", last: "Bateman"}, role: "Overseeing Bluth Company."}

IO.inspect get_in(nested, [:michael_bluth, :actor])
#  %{first: "Jason", last: "Bateman"}

IO.inspect get_in(nested, [:michael_bluth, :actor, :first])
# "Jason"

IO.inspect put_in(nested, [:gob_bluth, :role], "Magician and brother to Michael Bluth.");
# %{
#   michael_bluth: %{
#     actor: %{
#       first: "Jason",
#       last: "Bateman"
#     },
#     role: "Overseeing Bluth Company."
#   },
#   gob_bluth: %{
#     actor: %{
#       first: "Will",
#       last: "Arnet"
#     },
#     role: "Magician"
#   }
# }
