i = 0
numbers = []

# Study Drills

def while_call

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)
  
  i += 1
  puts "Numbers now: ", numbers
  puts "..."
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

# remember you can write this two other ways?
numbers.each {|num| puts num }
# (0..5).each do |i|