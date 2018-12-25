class MyFile
  attr_reader :handle

  def initialize(filename)
    if File.exist?(filename)
      @handle = File.new(filename, "r")
    else
      return false
    end
  end
end

if File.exist?("logfile.txt")
  puts "It exists"
  puts File.size("logfile.txt")
end
