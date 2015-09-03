require "Card"

describe Card do
  let(:card) {Card.new(:spades,6)}

  context "When a card is created" do

    it "it has a valid suit" do
      expect(card.suit).to eq(:spades)
    end

    it "it has a valid value" do
      expect(card.value).to eq(6)
    end

  end
end
