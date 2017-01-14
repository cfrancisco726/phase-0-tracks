=begin

turn both first name and last name to 2 elements of array
turn back to string
break up name into an array 
initialize array for vowels and consonants
compare array to vowel and consonants array
if there is a match replace with next vowel or consonant
	
=end


vowel_arr = ["a", "e", "i", "o", "u"]
consonant_arr = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]


def swap_name(spie_name)
	name_to_2arr = spie_name.split(' ')
	name_to_2arr[0], name_to_2arr[1] = name_to_2arr[1], name_to_2arr[0]
	swapped_name = name_to_2arr[0] + " " + name_to_2arr[1]
	return swapped_name.downcase.chars
end


#swap_name = ["l", "a", "s", "t", " ", "f", "i", "r", "s", "t"]

def next_vowel(swap_name)
	for i in swap_name
	counter = 0
		while counter < swap_name.length
			current_vow_index = vowel_arr.index(i) 
			swap_name[counter] = vowel_arr[current_vow_index + 1]
			counter += 1
		end
	end

end
		
p swap_name("First Last")
p next_vowel("First Last")