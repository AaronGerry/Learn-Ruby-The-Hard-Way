# 1) Go back through the script and type a comment above each line explaining in English what it does.
# 2) Start at the bottom and read each line backward, saying all the important characters.

# defining the function "cheese_and_crackers()"
def cheese_and_crackers(cheese_count, boxes_of_crackers)
# putting/ printing text on the screen. Referencing variables we define after function runs
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket. \n"
end

# Below, we specify what the quantities associated to "cheese_count" and "boxes_of_crackers" are directly. This is like ARGV
puts "We can just give the function numbers directly:"
# why do I need a space between comma and 30?
cheese_and_crackers(20,30)

# Here we create a new variable with the same name as the function (why does this associate with the function? Does it override the pre-defined variables? ie., does amount_of_cheese" replace the "cheese_count" variable?)
puts "OR, we can use variables from our script:"
# We define the variables
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# This is similar to specifiying the numbers of the function directly, except using addition
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# Here we combine the variable defined earlier and adding to it
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)


# 3) Write at least one more function of your own design, and run it 10 different ways.

def aaron_goes_shopping(money_in_bank, energy_level)
  puts "#{money_in_bank} dollars left."
  puts "He is good to go for #{energy_level} hours."
end

# defining variables of function directly
puts "Aaron starts with:"
aaron_goes_shopping(2000, 2)

puts "What does aaron need?"
puts "Share some items: "

needs = $stdin.gets(*needs)

puts "Okay! Aaron needs #{needs}"

# Got 

#puts """
#  He first goes to Bob's.
#  Here he buys #{needs}
#"""


# tried to create a new function at first, but couldn't figure out how to make it work
# now defining variables 



# pants_cost = 100
# need1 = "pantalones"
# energy_for_pantalones = 15

# aaron_goes_shopping(2000 - pants_cost, energy_for_pantalones)

#puts "The pants cost #{pants_cost} dollars" 








