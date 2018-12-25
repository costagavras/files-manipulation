require "csv"
# CSV.open("text_db.txt").each do |person|
#   p person
# end
#
# p CSV.read("text_db.txt")

# read and change
people = CSV.read("text_db.txt")
people.find do |person|
  if person[0] == "James Hacker"
    person[0] = "Jim Hacker"
  end
end

CSV.open("text_db.txt", "w") do |csv|
  people.each do |person|
    csv << person
  end
end

# require "sqlite3"
# puts "It's all okay!" if defined?(SQLite3::Database)
