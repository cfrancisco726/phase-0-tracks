class Game

	attr_accessor :word_arr, :guess_arr, :new_arr, :game_over, :game_count


	def initialize(word)
		@word_arr = word.chars
		@new_arr = []
		@game_count = 0
		@game_won = false
	end

	def check_guess(guess)
		if @new_arr.include?(guess)
			puts "You entered this guess already"
		else
			if @word_arr.include?(guess)
				@word_arr.length.times do |i|
					if @word_arr[i] == guess
						@new_arr.insert(i, guess)
						@new_arr.delete_at(i + 1)
					end
				end
			else 
				puts "Incorrect entry. try again"
			end
			@game_count += 1
		end
		p @new_arr
	end

	def game_is_over
		if @new_arr == @word_arr
			@game_won == true
			puts "You chose... wisely"
		elsif @game_count == @word_arr.length
			@game_won == false
			puts "Too many tries. You chose... poorly"
		end
	end
end



# driver code 
puts "Welcome to Word_game"
puts "---------------------"
puts "Player 1: Enter a word for player 2 to guess."
word_input = gets.chomp
game = Game.new(word_input)

loop do 
	puts "Player 2: Enter a letter guess. You only have #{game.word_arr.length - game.game_count} tries."
	guess = gets.chomp
	game.check_guess(guess)
	game.game_is_over
	break if game.game_count == game.word_arr.length || game.new_arr == game.word_arr
end












