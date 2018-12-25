require "sqlite3"
$db = SQLite3::Database.new("dbgile") #creates db handle
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
