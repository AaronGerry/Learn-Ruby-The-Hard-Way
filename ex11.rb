#print "How old are you? "
#age = gets.chomp
#print "How tall are you? "
#height = gets.chomp
#print "How much do you weigh? "
#weight = gets.chomp

#puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

print "What's your name?"
name = gets
print "Hello #{name} \t How are you? \n"
mood = gets
print "\t Glad to hear you are #{mood} \n\t How old are you? \n"
age = gets.chomp.to_i
print "\t Oh, okay. Did you know in 1 year you will be #{age + 1}? \n"