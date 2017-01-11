#hash form 

application = {
	name: "",
	address: "",
	age: 0,
	number_of_children: 0, 
	decor_theme: ["Modern", "Rustic", "Traditional"],
	decor_theme_choice: []
}


#Prompt user for info

puts "What is your name?"
application[:name] = gets.chomp

puts "What is your address?"
application[:address] = gets.chomp

puts "What is your age?"
application[:age] = gets.to_i

puts "What is the number of your children?"
application[:number_of_children] = gets.to_i


puts "What is your decor theme? 1 for Modern. 2 for Rustic. 3 for Traditional"
decor_var = gets.to_i 
application[:decor_theme_choice] << application[:decor_theme][decor_var - 1]

#Prompt users to ammend keys

puts "Choose which key you would like to change. 'name', 'address', 'age', 'children', 'decor theme' or 'none' "
user_input = gets.chomp
case user_input
when "name"
	puts "What is your name?"
    application[:name] = gets.chomp
when "address"
	puts "What is your address?"
    application[:address] = gets.chomp
when "age"
	puts "What is your age?"
    application[:age] = gets.to_i
when "children"
	puts "What is the number of your children?"
	application[:number_of_children] = gets.to_i
when "decor theme"
	puts "What is your decor theme? 1 for Modern. 2 for Rustic. 3 for Traditional"
	decor_var = gets.to_i 
	application[:decor_theme_choice] << application[:decor_theme][decor_var - 1]
when "done"

else 
	puts "incorrect input"
end

#print hash

puts application





