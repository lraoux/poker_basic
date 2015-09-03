require 'rspec'
require 'Player'

describe Player do
  subject(:player) { Player.new(50) }

  describe "#initialize" do
    context "when a player is created" do
      it "has the correct size wallet" do
        expect(player.wallet).to eq(50)
      end
      it "is in play at initialization" do
        expect(player).to be_playing
      end
    end
  end

  describe "#place_bet" do
    before do
      player.place_bet(20)
    end
    context "when the player places a bet" do
      it "properly reduces the player's wallet and returns the bet" do
        expect(player.wallet).to eq(30)
      end
    end
  end

end
