require 'rspec'
require 'Hand'

describe Hand do
  let(:straight_flush) { Hand.new([
    Card.new(:spades, 5),
    Card.new(:spades, 6),
    Card.new(:spades, 7),
    Card.new(:spades, 8),
    Card.new(:spades, 9)]) }
  let(:four_of_a_kind) { Hand.new([
    Card.new(:diamonds, 9),
    Card.new(:clubs, 9),
    Card.new(:spades, 9),
    Card.new(:hearts, 9),
    Card.new(:spades, 8)]) }
  let(:high_card) { Hand.new([
    Card.new(:spades, 2),
    Card.new(:diamonds, 4),
    Card.new(:clubs, 6),
    Card.new(:hearts, 8),
    Card.new(:spades, 11)]) }

  context "when a hand is generated" do
    it "correctly identifies the hand" do
      expect(straight_flush.rank).to eq(8)
      expect(four_of_a_kind.rank).to eq(7)
      expect(high_card.rank).to eq(0)
    end
  end
end
