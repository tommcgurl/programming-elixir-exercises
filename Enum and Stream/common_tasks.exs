# These are some examples of common tasks that you would use the Enum
# module for.
# Enum - Processing Collections page 90

# Convert any collection into a list
list = Enum.to_list 1..5
IO.inspect list # [1, 2, 3, 4, 5]

# Concatenate collections
concat_list_1 = Enum.concat([1,2,3], [4,5,6])
IO.inspect concat_list_1 # [1, 2, 3, 4, 5, 6]

concat_list_2 = Enum.concat([1,2,3], 'abc')
IO.inspect concat_list_2 # [1, 2, 3, 97, 98, 99]

# Create collections whose elements are some function
# of the original.
times_ten  = Enum.map(list, &(&1 * 10))
IO.inspect times_ten # [10, 20, 30, 40, 50]

ratings = Enum.map(list, &String.duplicate("*", &1))
IO.inspect ratings # ["*", "**", "***", "****", "*****"]


# Select elements by position or criteria
position_three = Enum.at(10..20, 3)
IO.inspect position_three # 13

position_twenty = Enum.at(10..20, 20)
IO.inspect position_twenty # nil

# You can provide a fallback value to Enum.at/3
position_twenty_with_fallback = Enum.at(10..20, 20, :no_one_here)
IO.inspect position_twenty_with_fallback # :no_one_here

greater_than_two = Enum.filter(list, &(&1 > 2))
IO.inspect greater_than_two # [3, 4, 5]

require Integer
evens = Enum.filter(list, &Integer.is_even/1)
IO.inspect evens # [2, 4]

# Enum.reject/2 is the oposite of Enum.filter/2
odds = Enum.reject(list, &Integer.is_even/1)
IO.inspect odds # [1, 3, 5]

# Sort and compare elements
sentence_list = ["there", "was", "a", "deadly", "sith lord"]
by_yoda_alphabetical = Enum.sort sentence_list
IO.inspect by_yoda_alphabetical # ["a", "deadly", "sith lord", "there", "was"]

by_string_length = Enum.sort(sentence_list, &(String.length(&1) <= String.length(&2)))
IO.inspect by_string_length # ["a", "was", "there", "deadly", "sith lord"]

max_alphabetical = Enum.max sentence_list
IO.inspect max_alphabetical # was

max_string_length = Enum.max_by sentence_list, &String.length/1
IO.inspect max_string_length # "sith lord"

# Predicate Operations
are_all_less_than_four = Enum.all? list, &(&1 < 4)
IO.inspect are_all_less_than_four # false

are_any_less_than_four = Enum.any? list, &(&1 < 4)
IO.inspect are_any_less_than_four # true

is_4_in_the_list = Enum.member? list, 4
IO.inspect is_4_in_the_list # true

is_list_empty = Enum.empty? list
IO.inspect is_list_empty # false

# Merge collections
zip_list = Enum.zip list, [:a, :b, :c]
IO.inspect zip_list # [{1, :a}, {2, :b}, {3, :c}]

list_with_index = Enum.with_index ["once", "upon", "a", "time"]
IO.inspect list_with_index # [{"once", 0}, {"upon", 1}, {"a", 2}, {"time", 3}]


# Fold elements into a single value
sum_list = Enum.reduce 1..100, &(&1 + &2)
IO.inspect sum_list # 5050

longest_word = Enum.reduce(["now", "is", "the", "time"], fn word, longest ->
    if String.length(word) > String.length(longest) do
      word
    else
      longest
    end
  end
)
IO.inspect longest_word # "time"

# Deal a hand of cards
deck = for rank <- '23456789TJQKA', suit <- 'CDHS', do: [suit, rank]
IO.inspect deck # ['C2', 'D2', 'H2', 'S2', 'C3', 'D3' ...]

hand_of_13 = deck |> Enum.shuffle |> Enum.take(13)
IO.inspect hand_of_13 # Should be a rnadom array of 13 cards.
