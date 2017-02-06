# require gems
require 'sqlite3'

db = SQLite3::Database.new("time_manager.db")
db.results_as_hash = true

create_table_start = <<-SQL
  CREATE TABLE IF NOT EXISTS start(
    id INTEGER PRIMARY KEY,
    event VARCHAR(255),
    started date
  )
SQL

create_table_finish = <<-SQL
  CREATE TABLE IF NOT EXISTS finish(
    id INTEGER PRIMARY KEY,
    event VARCHAR(255),
    finished date
  )
SQL

create_table_time = <<-SQL
  CREATE TABLE IF NOT EXISTS length_of_time(
    id INTEGER PRIMARY KEY,
    event VARCHAR(255),
    time_difference INT
  )
SQL

create_trg_insert_start = <<-SQL
	create trigger IF NOT EXISTS create_trg_insert_start after insert on start
	begin
	  update start set started = datetime('NOW') where rowid = new.rowid;
	end;
SQL

create_trg_insert_finish = <<-SQL
	create trigger IF NOT EXISTS create_trg_insert_finish after insert on finish
	begin
	  update finish set finished = datetime('NOW') where rowid = new.rowid;
	end;
SQL




# add a test event
def insert_start (db, event)
	db.execute("INSERT INTO start (event) VALUES (?)", [event])
end

def insert_finish (db, event)
	db.execute("INSERT INTO finish (event) VALUES (?)", [event])
end
# select * from schedule where id = 1

db.execute(create_table_start)
db.execute(create_table_finish)

db.execute(create_trg_insert_start)
db.execute(create_trg_insert_finish)


# db.execute(create_trg_update_cmd)
p "Welcome to the wasted time manager."
p "-----------------------------------"
p "Keep track of how much time you wasted today by entering an event where you believe you will waste time."
p "Some event examples may be, watching TV, spending time on social media, or playing video games."
p 
p "Specify what you're going to start doing where you will be wasting time."
event = gets.chomp
insert_start(db, event)

p "Log out by typing in the event."
event = gets.chomp
insert_finish(db, event)

start = db.execute("select * from start")
puts start.class
p start

finish = db.execute("select * from finish")
puts finish.class
p finish

# added = db.execute("select updatedon from schedule where id = 1")
# p added
# finished = db.execute("select updatedon from schedule where id = 2")
# p finished

# p difference = finished.to_i - added.to_i
# SELECT CONCAT(DATEDIFF(closed_on, added_on), 
#               ' days ', 
#               SUBSTRING_INDEX(TIMEDIFF(closed_on, added_on), ':', 1), 
#               ' hours ', 
#               SUBSTR(TIMEDIFF(closed_on, added_on), INSTR(TIMEDIFF(closed_on, added_on), ':')+1, 2),  
#               ' minutes')






