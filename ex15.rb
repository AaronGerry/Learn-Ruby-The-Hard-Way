# this requires inputting text at the start, when you run the program. This text is what defines the variable "filename"
filename = gets.chomp

# this defines the variable "txt" with a command; open the filename we specified above
txt = open(filename)

# prints text and name of filename
puts "Here's your file #{filename}:"
# prints the content of the txt variable, as defined by the file
print txt.read

# prints text
print "Type the filename again: "
# $stdin pulls information from user input, initiated by gets. So, gets prompts the user to input information, which is stored
file_again = $stdin.gets.chomp

# defines variable "txt_again" as opening the file specified under variable "file_again"
txt_again = open(file_again)

# prints content of file associated with "txt_again" which refers to file associated with "file_again"
print txt_again.read
close()