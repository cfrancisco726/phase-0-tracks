# require gems
require 'sqlite3'

db = SQLite3::Database.new("time_manager.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS schedule(
    id INTEGER PRIMARY KEY,
    event VARCHAR(255),
    updatedon date
  )
SQL

create_trg_insert_cmd = <<-SQL
	create trigger IF NOT EXISTS schedule_insert_trg after insert on schedule
	begin
	  update schedule set updatedon = datetime('NOW') where rowid = new.rowid;
	end;
SQL

# add a test event
def insert (db, event)
	db.execute("INSERT INTO schedule (event) VALUES (?)", [event])
end

# select * from schedule where id = 1

db.execute(create_table_cmd)
db.execute(create_trg_insert_cmd)

# db.execute(create_trg_update_cmd)
p "Welcome to the wasted time manager."
p "-----------------------------------"
p "Keep track of how much time you wasted today by entering an event where you believe you will waste time."
p "Some event examples may be, watching TV, spending time on social media, or playing video games."
p 
p "Specify what you're going to start doing where you will be wasting time."
event = gets.chomp
insert(db, event)

p "Log out by typing in the event."
event = gets.chomp
insert(db, event)

schedule = db.execute("select * from schedule")
puts schedule.class
p schedule

# schedule[updatedon] from 






