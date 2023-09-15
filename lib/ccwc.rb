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
  attr_reader :file_name
  
  def initialize(file, args)
    @file_name = file
    @file = File.read(file)
    @args = args.empty? ? ["-l","-w","-c"] : args
  end
  
  def show
    "#{read.join(" ")} #{file_name}"
  end
  
  private
  attr_reader :file
  
  def read
    @args.map do |argument|
      case argument
      when "-c"
        bytes
      when '-l'
        lines
      when '-w'
        words
      when '-m'
        characters
      else
        break "Invalid Argument"
      end
    end
  end
  
  
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