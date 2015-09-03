require 'Card'

class Deck
  attr_reader :cards

  SUITS = [:spades, :hearts, :clubs, :diamonds]
  VALUES = (0..12).to_a

  def initialize
    @cards = []
    generate_deck
  end

  def generate_deck
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << Card.new(suit, value)
      end
    end
  end
end
