require "sqlite3"
$db = SQLite3::Database.new("dbgile") #creates a db handle and assigns it to a global variable, $db
#so that the program can be split into multiple methods without creating a class.
$db.results_as_hash = true #forces SQLite to return data as a hash rather than
#as an array of attributes (as with CSV)

def disconnect_and_quit
  $db.close
  puts "Database closed"
  exit
end

def create_table
  puts "Creating people table"
  $db.execute %q{
    CREATE TABLE people (
      id integer primary key,
      name varchar(50),
      job varchar(50),
      gender varchar(6),
      age integer)
  }
end

def add_person
  puts "Enter name:"
  name = gets.chomp #removes the newline chars at the end of keyboard output retrieved with gets
  puts "Enter job:"
  job = gets.chomp
  puts "Enter gender:"
  gender = gets.chomp
  puts "Enter age:"
  age = gets.chomp
  $db.execute("INSERT INTO people (name, job, gender, age) VALUES (?, ?, ?, ?)",
  name, job, gender, age) #? placeholders to prevent interpolation of the input directly into the SQL
end

def find_person
  puts "Enter name or ID of person to find:"
  id = gets.chomp

  person = $db.execute("SELECT * FROM people WHERE name = ? OR id = ?", id, id.to_i).first

  unless person
    puts "No results found"
    return
  end

  puts %Q{Name: #{person["name"]}
  Job: #{person["job"]}
  Gender: #{person["gender"]}
  Age: #{person["change"]}
  }

end
