## Problem:
# Write Simple Version of WC (word, line, character and byte count of file)

# Dividing the problem into steps 

## Example:
# Input:
# -c test.txt

# Output:
# 341836 test.txt (prints the number of bytes and the corresponding file)

## Code

class Wc
  def initialize(file, *args)
    @file = File.read(file)
    @args = args || ["-l","-w","-c"]
  end
  
  def read
    @args.each do |arg|
      case arg
      when '-c'
        bytes
      when '-l'
        lines
      when '-w'
        words
      when '-m'
        characters
      end
    end
  end
  
  private
  attr_reader :file
  
  def bytes
    file.bytesize.to_s
  end
  
  def lines
    file.each_line.count.to_s
  end
  
  def words
    file.split.size.to_s
  end
  
  def characters
    file.each_char.count.to_s
  end
end

commands = ARGF.argv

file = commands.pop # last-command file
result = ""

commands.each do |arg| 
  case arg
  when '-c'
    result += File.read(file).bytesize.to_s + " "
  when '-l'
    result += File.read(file).each_line.count.to_s + " "
  when '-w'
    result += File.read(file).split.size.to_s + " "
  when '-m'
    result += File.read(file).each_char.count.to_s + " "
  end
end

puts "#{result}#{file}"