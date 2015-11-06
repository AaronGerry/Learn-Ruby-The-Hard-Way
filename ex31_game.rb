puts "You're walking through the woods when an apparition appears..."
puts "'What's your name?' Says The Genie, as he fades into view."

puts "> "
name = $stdin.gets.chomp

puts """
'My name is #{name}. What's yours?' \n
'My name is Eferjeet, and I'm here to grant you 1 wish (lucky you). 
Choose from the following':
1. TREES or WATER?
"""

medium = $stdin.gets.chomp.upcase

if medium == "TREES"
  puts "'Acreage is in your future. How many do you want?'"
  puts "> "
  acre = $stdin.gets.chomp.to_i
  
  if acre >= 1 && acre < 20
    puts "'It shall be yours.'"
  elsif acre >= 21
    puts "'You shall be inundated with TREES.'"
    puts "A wall of TREES grow around you..."
  else
    puts "You splinter."
end
    
elsif medium == "WATER"
  puts "I hope you're a good swimmer."
else 
  puts """
  'Wise guy, eh?
  I didn't offer other options.
  You shall die now.'"
end

  
  
