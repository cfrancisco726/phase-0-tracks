class Word_Game
	attr_reader 
	attr_accessor :word_arr, :guess_arr, :new_arr, :game_over

	# method: initialize
	# input: word, guess, 
	# steps: 
	# output: return value of instance variables
	# @word, @game_over, @guess_count, @word_arr, @guess_arr, new_arr

	def initialize(word)
		@word = word
		@game_over = false
		@word_arr = []
		@guess_arr = []
		@new_arr = []
	end

	# method: split_word
	# input: word
	# steps: .split word into array
	# output: word_arr

	def split_word
		@word_arr = @word.split(//)
		p @word_arr
	end

	# method: return_word_length
	# input: 
	# steps: get word array length and print "_ " # times
	# output: "_" # times

	def return_word_length
		@word_arr.length.times {print "_ "}
	end


	# method: split_guess
	# input: guess
	# steps: .split guess into array
	# output: guess_arr

	def split_guess(guess)
		@guess_arr = guess.split(//)
	end

	# method: blank_new_arr
	# input: 
	# steps: push "_" # word_arr.legnth times into new_arr
	# output: 

	def blank_new_arr
		@word_arr.length.times {@new_arr.push("_")}

	end

	# method: is_over
	# input: 
	# steps: if state to see if word_arr and new_arr equal
	# output: true if equal.  and print result
	def is_over
		if @word_arr == @new_arr
			@game_over = true
			p "You chose... wisely"
		end
	end

end

#driver code 
puts "Welcome to Word_game"
puts "---------------------"
puts "Player 1: Enter a word for player 2 to guess."
word_input = gets.chomp
word_game = Word_Game.new(word_input)
word_game.split_word
word_game.return_word_length
word_game.blank_new_arr
puts ""
# puts @new_arr

#run loop until game is over
count1 = 0
while !word_game.is_over
	if count1 != word_game.word_arr.length
		p "Player 2: Enter a guess. You only have #{word_game.word_arr.length} tries."
		guess_input = gets.chomp
		word_game.split_guess(guess_input)
		counter = 0
		word_game.word_arr.each do |i|
		  if word_game.guess_arr.include?(i)
		    word_game.new_arr.insert(counter, i)
		    word_game.new_arr.delete_at(counter + 1)
		  end
		counter += 1
		end
		p word_game.new_arr
			count1 += 1
	else
		puts "Too many entries. You chose... poorly."
		break
	end

end
















