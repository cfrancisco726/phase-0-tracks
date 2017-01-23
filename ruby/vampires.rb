puts "How many employees will be processed?"
num = gets.to_i


until num == 0 do
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "What year were you born?"
birth_year = gets.to_i

puts "Should we order garlic bread?"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
insurance = gets.chomp

puts "Name any allergies one at a time and enter done when finished."

while allergies = gets.chomp
	case allergies
	when "sunshine"
	  break
	when "done"
	  break 
	end
end



if allergies == "sunshine"
	puts "Probably a vampire"
elsif  name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"
elsif (age < 150 && birth_year > 1867) && (garlic == "yes" || insurance == "yes")
	puts "Probably not a vampire"
elsif !(age < 150 && birth_year > 1867) && garlic == "no" && insurance == "no"
	puts "Almost certainly a vampire"
elsif !(age < 150 && birth_year > 1867) && (garlic == "no" || insurance == "no")
	puts "Probably a vampire"
else 
	puts "Results inconclusive"
end



num -=1;
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


			
