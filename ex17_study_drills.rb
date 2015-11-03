# 1) This script is really annoying. There's no need to ask you before doing the copy, and it prints too much out to the screen. Try to make the script more friendly to use by removing features.

from_file, to_file = ARGV

puts "Copying from #{from_file} to #{to_file}"

# Original code: in_file = open(from_file)
# Original code: indata = in_file.read
	# Given that the variable "in_file" was used in each method, I replaced the variable "in_file" with the associated definition
	# This is another option: in_file = open(from_file); indata = in_file.read

indata = open(from_file).read

puts """
The input file is #{indata.length} bytes long
Does the output file exist? #{File.exist?(to_file)}
Copying...
"""

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all done."

out_file.close

# See how short you can make the script. I could make this one line long.

# Notice at the end of the What You Should See I used something called cat? It's an old command that "con*cat*enates" files together, but mostly it's just an easy way to print a file to the screen. Type man cat to read about it.

# Find out why you had to write out_file.close in the code.
	# It appears this has to do with adding unecessary burden to memory, for if the block is not closed, it may have to be stored in memory, which can get "expensive" or taxing for larger programs.