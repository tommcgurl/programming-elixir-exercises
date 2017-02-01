# Exercise: ModulesAndFunctions-7 (Finding Libraries page 59)

# Find the library functions to do the following, and then use each in iex.
# (If the word Elixir or Erlang appears at the end of the challenge,
# then you’ll find the answer in that set of libraries.)
# – Convert a float to a string with two decimal digits. (Erlang)
#     For this you could use Erlang's :io.format/2 function like so,
#     :io.format("~.2f~n", 3.45987)

# – Get the value of an operating-system environment variable. (Elixir)
#     For this you could us Elixir's System module and the System.get_env function
#     System.get_env "HOME"
#
# – Return the extension component of a file name (so return .exs if given
# "dave/test.exs"). (Elixir)
#     For this you could use Elixir's Path Module and the Path.extname/1 function_exported?
#     Path.extname("sum.exs")
# – Return the process’s current working directory. (Elixir)
#     For this you could use Elixir's System module and the System.cwd/0 function
#     System.cwd()
# – Convert a string containing JSON into Elixir data structures. (Just
# find; don’t install.)
#      There are a few libraries that will do this. One great open source option is
#      https://github.com/devinus/poison
# – Execute a command in your operating system’s shell.
#     For this you can use Elixir's System module and the System.cmd/2 function_exported?
#     System.cmd("ls", ["-la"]) 
