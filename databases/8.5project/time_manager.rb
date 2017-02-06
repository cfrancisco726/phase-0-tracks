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

def insert_difference(db, time_difference )
	db.execute("INSERT INTO length_of_time (time_difference) VALUES (?)", [time_difference])
end

db.execute(create_table_start)
db.execute(create_table_finish)
db.execute(create_table_time)


db.execute(create_trg_insert_start)
db.execute(create_trg_insert_finish)


p "Welcome to the wasted time manager."
p "-----------------------------------"
p "Keep track of how much time you wasted today by entering an event where you believe you will waste time." 
p "Specify what you will be doing.  The timer starts now."
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

started_arr = db.execute("select started from start where id = 1")
puts started_arr.class
p started_arr
finished_arr = db.execute("select finished from finish where id = 1")
puts finished_arr.class
p finished_arr

p difference = (finished_arr[finished] - started_arr[started])


insert_difference(difference)

time_diff = db.execute("select * from length_of_time")
puts time_diff.class
p time_diff










