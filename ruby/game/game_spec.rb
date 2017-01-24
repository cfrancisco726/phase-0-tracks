
require_relative 'game'

describe Game do
  let(:game) { Game.new('dog') }
# initialize method
  it "word input splits into array" do
    expect(game.word_arr).to eq ["d", "o", "g"]
  end

# check guess 
 it "checks if guess is included in new array" do
 	game.check_guess('a')
    expect(game.new_arr).to eq []
  end

 it "checks if guess is included in new array" do
 	game.check_guess('o')
    expect(game.new_arr).to eq [nil, "o" ]
  end

  it "check to make sure game is still going" do
  	expect(game.game_is_over).to eq nil
  end

  it "check if winner" do 
  	game.new_arr = ["d", "o", "g"]
  	expect(game.game_is_over).to eq true
  end

   it "check if lsoer" do 
  	game.game_count = game.word_arr.length
  	expect(game.game_is_over).to eq false
  end

end

