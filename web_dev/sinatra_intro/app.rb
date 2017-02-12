# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a GET route that displays an address

get '/contact' do 
  "100 Broadway ave. New York, NY" 
end
	
get '/great_job/:person' do 
    person = params[:person]
    if person
    "Good job, #{name}"
    else 
      "Great job!!"
    end
end


get '/:num1/add/:num2' do
  added_num = params[:num1].to_i + params[:num2].to_i
  added_num.to_s
end

get '/campus/:campus' do
  campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  student_by_campus = ""
  campus.each do |student|
    student_by_campus << "ID: #{student['id']}<br>"
    student_by_campus << "Name: #{student['name']}<br>"
    student_by_campus << "Age: #{student['age']}<br>"
    student_by_campus << "Campus: #{student['campus']}<br><br>"
  end
  student_by_campus
end

