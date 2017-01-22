# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.

=begin

method: initialize
input: word, guess, 
steps: 
output: return value of instance variables
		@word, @game_over, @guess_count, @word_arr, @guess_arr
	
method: split_word
input: word
steps: .split word into array
output: word_arr

method: split_guess
input: guess
steps: 
output: 

method: 
input: 
steps: 
output: 


=end

class Word_Game

	def initialize(word)
		@word = word
		@game_over = false
		@guess_count = 0 
		@word_arr = []
		@guess_arr = []
	end

	def split_word
		@word_arr = @word.split(//)
		p @word_arr
	end

	# def split_guess
	# 	@guess_arr[] = @guess.split(//)
	# end

	def return_word_length
		@word_arr.length.times {print "_ "}
	end

	def split_guess(guess)

	end

end

#driver code 
puts "Player 1 enter a word for player 2 to guess."
word_input = gets.chomp
word_game = Word_Game.new(word_input)
word_game.split_word
word_game.return_word_length



# puts "Welcome to the Word Game"

# puts "Enter word"
# word = gets.chomp
# Word_Game.new(word)
# p return_word_length(word)
# puts "Enter guess"
# guess = gets.chomp
# Word_Game.new(guess)














