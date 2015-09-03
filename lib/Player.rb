class Player
  attr_accessor :wallet
  attr_reader :playing

  def initialize(initial_wallet = 100)
    @wallet = initial_wallet
    @playing = true
    @current_hand = []
  end

  def receive_hand(hand_arr)
    @playing = true
    @current_hand = hand_arr
  end

  def fold
    @playing = false
  end

  def playing?
    playing
  end

  def place_bet(amount = 10)
    @wallet -= amount
  end
end
