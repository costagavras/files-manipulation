require "csv"
# CSV.open("text_db.txt").each do |person|
#   p person
# end
#
# p CSV.read("text_db.txt")

people = CSV.read("text_db.txt")
jim = people.find {|person| person[2] =~ /Jim Hacker/}
jim[0] = "James Hacker"

CSV.open("text_db.txt", "w") do |csv|
  people.each do |person|
    csv << person
  end
end
