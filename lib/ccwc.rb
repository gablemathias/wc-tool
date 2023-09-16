class Wc  
  attr_reader :file_path
  
  def initialize(file, args)
    @file_path = file
    @file = File.read(file)
    @args = args.empty? ? ["-l","-w","-c"] : args
  end
  
  def show
    return "#{read.join(" ")}" if file_path.is_a? File
      
    "#{read.join(" ")} #{file_path}"
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