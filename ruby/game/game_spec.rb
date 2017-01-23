
require_relative 'game'

describe Game do
  let(:game) { Game.new('dog') }
# initialize method
  it "word input splits into array" do
    expect(game.word_arr).to eq ["d", "o", "g"]
  end

  

end

