=begin

turn both first name and last name to 2 elements of array
turn back to string
break up name into an array 
initialize array for vowels and consonants
compare array to vowel and consonants array
if there is a match replace with next vowel or consonant
	
=end

alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
vowel_arr = ["a", "e", "i", "o", "u"]
consonant_arr = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

def alias_reverse(full_name)

	arr_full = full_name.split(' ')
	arr_full[0], arr_full[1] = arr_full[1], arr_full[0]
	swapped_name_arr = arr_full[0] + " " + arr_full[1]
	swapped_name_arr = swapped_name_arr.downcase
	swapped_name_arr = swapped_name_arr.chars
	swapped_name_arr
alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

		counter = 0
		while counter < swapped_name_arr.length
			current_letter = alphabet.index(swapped_name_arr[counter]) 
			swapped_name_arr[counter] = alphabet[current_letter + 1]
		end
		counter += 1
		swapped_name_arr
end


#swapped_name = ["l", "a", "s", "t", " ", "f", "i", "r", "s", "t"]
=begin
	for i in swapped_name
		counter = 0
		while counter < swapped_name.length
			swapped_name.each do |vowel|
				if vowel == vowel_arr.index(i)
				 	current_vowel_index = vowel_arr.index(i) 
					swapped_name[counter] = vowel_arr[current_vow_index + 1]
					break
				elsif vowel == consanant_arr.index(i)
					current_cons_index = consonant_arr.index(i) 
					swapped_name[counter] = vowel_arr[current_cons_index + 1]
					break
				elsif vowel == " "
					swapped_name[counter] = " "
 
			    end	
			end
			counter += 1
		end
	end
	return swapped_name
en
=end

alias_reverse("FirstLast")