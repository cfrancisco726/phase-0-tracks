require_relative 'word_game'

describe Word_game do
  let(:word_game) { Word_game.new("test") }
# initialize methods
  it "word input characters get split intoto array" do
    expect(word_game.word_arr).to eq ["t", "e", "s", "t"]
  end

  # it "subtracts two integers" do
  #   expect(calculator.subtract(7,1)).to eq 6
  # end

  # it "multiplies two integers" do
  #   expect(calculator.multiply(2,3)).to eq 6
  # end
end