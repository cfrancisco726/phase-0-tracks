=begin

turn both first name and last name to 2 elements of array and switch
turn back to string
break up new name into an array 
compare letters to vowel and consonants array
add 1 to each letter
push to new array
convert array to string
capitalize string
	
=end

def alias_reverse(full_name)

	vowel_arr = ["a", "e", "i", "o", "u"]
	consonant_arr = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	final_arr = []

	arr_full = full_name.split(' ')
	arr_full[0], arr_full[1] = arr_full[1], arr_full[0]
	swapped_name_str = arr_full[0] + " " + arr_full[1]
	swapped_name_str1 = swapped_name_str.downcase
	swapped_name = swapped_name_str1.chars


swapped_name.each do |letter|
				if letter == "u"
					final_arr << "a"
				elsif letter == "z"
					final_arr << "b"
				elsif
					vowel_arr.include?(letter)
				 	new_vowel_index = vowel_arr.index(letter) + 1
					final_arr << vowel_arr[new_vowel_index]
				elsif consonant_arr.include?(letter)
					new_cons_index = consonant_arr.index(letter) + 1
					final_arr << consonant_arr[new_cons_index]
				elsif letter == " "
					final_arr << " "
				end
			end
		final_str = final_arr.join
		final_cap = final_str.split.each{|i| i.capitalize!}.join(' ')

end


loop do 
puts "Enter full name (or type 'done' to quit)"
	full_name = gets.chomp
	break if full_name == "done"
	p alias_reverse(full_name)
end
