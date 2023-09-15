## Problem:
# Write Simple Version of WC (word, line, character and byte count of file)

# Dividing the problem into steps 

## Example:
# Input:
# -c test.txt

# Output:
# 341836 test.txt (prints the number of bytes and the corresponding file)

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