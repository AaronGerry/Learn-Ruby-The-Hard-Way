module ex33

  def ex33.run_loop(i, max)

  i = 0 
  max = 6
  numbers = []

  while i < max
    puts "At the top i is: #{i}"
    numbers.push(i)
    
    i += 1
    puts "Number now: ", numbers
    puts "At the bottom, i is #{i}"
    puts "..."
  end
end

puts "The numbers: #{numbers}"
