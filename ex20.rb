# whatever file is referenced when you run the program is the "input_file"
input_file = ARGV.first

# defining the function "print_all(variable)". Here it is saying that whenever "print_all" is referenced later on, it will print the contents of the file
def print_all(f)
  puts f.read
end

# defining the function "rewind(f)". f is arbritrary, can use any varable. This says that when "rewind(f)" is called, seek/ go to line 0(?)
# http://ruby-doc.org/core-2.0.0/IO.html#method-i-seek: "positions ios to the beginning of input, resetting lineno to zero."
def rewind(f)
  f.seek(0)
end

# definining function "print_a_line(x, y)". Print out which line it is reading from, then the contents of that line. "chomp" doesn't seem to have any impact or need here, perhaps it is just clearing any linebreaks if there happen to be any. 
# reference: http://ruby-doc.org/core-2.2.0/String.html#method-i-chomp
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# define variable "current_file" by opening the file pulled in by ARGV
current_file = open(input_file)

puts "First lets print the whole file:\n"

# prints the contents of the open "input_file," as defined in the function above

print_all(current_file)

puts "Now lets rewind, kind of like a tape."

# in the file, go back to line 0, as defined in the function above

rewind(current_file)

puts "Let's print three lines:"

# using "print_a_line" function above, start with line 1, print line count, and text of line.
# current_line = line 1
# changed "current_line = current_line + 1" => "current_line += 1"

current_line = 1
print_a_line(current_line, current_file)

# code is read in a waterfall fashion, so it is already on line 1, now go to line 2, print line count and text of line 2
# current_line = line 2
current_line += 1
print_a_line(current_line, current_file)

# go on to line 2 + 1 = line 3; print line count and text of line 3
# current_line = line 3
current_line += 1
print_a_line(current_line, current_file)
