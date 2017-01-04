puts "Hamster's name?"
name = gets.chomp

puts "Volume level from 1 to 10?"
volume = gets.chomp.to_i

puts "Fur color"
fur = gets.chomp

puts "Is hamster adoptable?"
adoptable = gets.chomp

puts "Estimated age?"
age = gets.chomp

if age == "" || age == " "
	age = nil
else 
	age = age.to_i
end

puts "Hamster's name: #{name}"
puts "Volume level from 1 to 10: #{volume}"
puts "Fur color: #{fur}"
puts "Is hamster adoptable: #{adoptable}"
puts "Estimated age: #{age}"
