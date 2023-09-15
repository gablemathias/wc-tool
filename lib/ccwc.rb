## Problem:
# Write Simple Version of WC (word, line, character and byte count of file)

# Dividing the problem into steps 
# Step 1:
# Write a command to read the number of bytes in a file.

## Example:
# Input:
# -c test.txt

# Output:
# 341836 test.txt (prints the number of bytes and the corresponding file)

## Data Structure & Algorithms

# 1. Get the commands as an array ["-c","test.txt"]
# 3. Loop through the arguments
# 3.1. Check: if the command starts with "-"
# if the character followed by the "-" is "c"
# shift and read the corresponding command
# 3.2. Read the file that follows the command
# 4. Break the loop
# 5. Count the number of bytes inside the file
# 6. Store the total of bytes
# 7. Print the number of bytes and followed by the file name 

## Code

commands = ARGF.argv

file = commands.pop # last-command file
result = ""

commands.each do |arg| 
  case arg
  when '-c'
    result += File.read(file).bytesize.to_s + " "
  when '-l'
    result += File.readlines(file).size.to_s + " "
  when '-w'
    result += File.read(file).split.size.to_s + " "
  end
end

puts "#{result}#{file}"