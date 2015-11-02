first, second, third = ARGV

print "What's your favorite fruit?"
first = gets.chomp
print "What's your favorite dog?"
second = gets.chomp
print "What's your favorite city?"
third = gets.chomp

puts "\nWow, cool! Did you know?:"
puts "\t*Your favorite fruit is: #{first}"
puts "\t*Your favorite dog is: #{second}"
puts "\t*Your favorite city is: #{third}"