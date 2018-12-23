#code block technique
# File.open("text.txt") do |f|
#   puts f.gets
# end
#
# #file handle technique
# f = File.new("text.txt", "r") #"r" stand for reading
# puts f.gets
# f.close
#
# #file handle to an instance variable
# class MyFile
#   attr_reader :handle
#
#   def initialize(filename)
#     @handle = File.new(filename, "r")
#   end
#
#   def finished
#     @handle.close
#   end
# end
#
# f = MyFile.new("text.txt")
# puts f.handle.gets
# f.finished
#
# File.open("text.txt").each(",") { |line| puts line}
#
# File.open("text.txt") do |f|
#   2.times {puts f.gets}
# end

#file write
File.open("text.txt", "w") do |f|
  f.puts "This a write-file test"
end
