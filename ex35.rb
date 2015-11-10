def gold_room
  puts "This room is full of gold coins. How many gold coins do you take?"
  
  print "> "
  choice = $stdin.gets.chomp
  options = (0..9)

# error in below line
  # Is this just saying that if there is the number 0 or 1, then convert input to integer?
  if choice =~ (/\d/)
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

def bear_room
  puts """
    There is a bear here.
    The bear has a bunch of honey.
    The fat bear is in front of another door.
    How are you going to move the bear?
    """
# If defining bear_moved = false here, why does while run?
  bear_moved = false
  
  while true
    print "> "
    choice = $stdin.gets.chomp
    
    if choice.include?("honey")
      dead("The bear looks at you and slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

def cthulhu_room
  puts """
    Here you see the great evil Cthulhu.
    He, it, whatever, stares at you and you go insane.
    Do you flee for your life or eat your head?
  """
  
  print "> "
  choice = $stdin.gets.chomp
  
  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulu_room
  end
end

def dead(why)
  puts why, "Good job (you're dead)!"
  exit(0)
end

def start
  puts """
    You are in a dark room.
    There is a door to your right and left.
    Which one do you take?
  """
  
  print "> "
  choice = $stdin.gets.chomp
  
  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else 
    dead("You stumble around the room until you starve.")
  end
end

start