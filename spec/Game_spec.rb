require 'rspec'
require 'Game'

describe Game do
  subject(:game) { Game.new(4) }

  context "when it initializes" do
    it "has the correct number of players" do
      expect(game.players.count).to eq(4)
    end
    it "has a deck" do
      expect(game.deck).to be_a(Deck)
    end
    it "has a pot of 0" do
      expect(game.pot).to eq(0)
    end
    it "starts with player 1" do
      expect(game.current_player).to eq(:player_1)
    end
  end
end
