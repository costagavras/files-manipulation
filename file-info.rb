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

puts "It exists!" if File.exist?("logfile.txt")
