File.open("text.txt") do |f|
  puts f.gets
end

f = File.new("text.txt", "r") #"r" stand for reading
puts f.gets
f.close
