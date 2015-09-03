require "Deck"
require 'rspec'

describe Deck do
  let(:deck) {Deck.new}

  context "Create a deck" do

    it "and it has an array of cards" do
      expect(deck.cards.length).to eq(52)
    end

    it "it has no duplicates" do
      expect(deck.cards).to eq(deck.cards.uniq)
    end

  end
end
