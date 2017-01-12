=begin
define methods for prompting users input
print back hash after questions answered
ask user for any updates
print latest hash
=end

#hash form 


#Define methods to prompt user for info
def get_name
	puts "What is your name?"
	your_name = gets.chomp
	your_name
end

def get_address
	puts "What is your address?"
	your_address = gets.chomp
	your_address
end

def get_age
	puts "What is your age?"
	your_age = gets.chomp.to_i
	your_age
end

def get_num_children
	puts "What is the number of your children?"
	your_num_children = gets.chomp.to_i
	your_num_children
end

def get_decor_theme
	puts "What is your decor theme?"
	your_decor_theme = gets.chomp
	your_decor_theme
end

#assign user data to variable

your_name = get_name
your_address = get_address
your_age = get_age
your_num_children = get_num_children
your_decor_theme = get_decor_theme

#hash form

application = {
	name: your_name,
	address: your_address,
	age: your_age,
	number_of_children: your_num_children, 
	decor_theme: your_decor_theme
}



p application

#Prompt users to ammend keys

puts "Choose which key you would like to change. 'name', 'address', 'age', 'children', 'decor_theme' or 'done' "
user_input = gets.chomp
case user_input.to_sym
when :name
	application[:name] = get_name
when :address
	application[:address] = get_address
when :age
	application[:age] = get_age
when :number_of_children
	application[:children] = get_num_children
when :decor_theme 
     application[:decor_theme] = get_decor_theme
     
when "done"

else 
	puts "incorrect input"
end

#print hash

puts application





