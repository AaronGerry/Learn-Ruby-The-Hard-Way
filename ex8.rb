# I think in defining variable "formatter" we are outlining how we want the proceeding information to be laid out (in this case, linearly on one row)

formatter = "%{first} %{second} %{third} %{fourth}"

# Using layout defined by "formatter", list out 1, 2, 3, 4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}

puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}
puts formatter % {first: true, second: false, third: true, fourth: false}
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# I think below the information is laid out as it is simply for ease of reading. Let's test... Yea, it doesn't matter if I put all the lines into one row.
puts formatter % {
    first: "I had this thing.", 
    second: "That you could type up right.",
    third: "But it didn't sing.",
    fourth: "So I said goodnight."
}