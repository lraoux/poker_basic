require 'Card'

class Hand
  attr_reader :rank, :sorted_arr
  Hand_Rank = [
    :high_card,
    :pair,
    :two_pair,
    :trips,
    :straight,
    :flush,
    :full_house,
    :four_of_a_kind,
    :straight_flush
  ]

  def initialize(cards_arr)
    @cards_arr = cards_arr
    @sorted_arr = []
    @sub_rank = 0
    @rank = 100
    set_hand
  end

  def set_hand
    @sorted_arr = @cards_arr.sort_by { |card| card.value }
    if straight? && flush?
        @rank = Hand_Rank.index(:straight_flush)
    elsif of_a_kind?(4)
        @rank = Hand_Rank.index(:four_of_a_kind)
    elsif of_a_kind?(3) && of_a_kind?(2)
        @rank = Hand_Rank.index(:full_house)
    elsif flush?
        @rank = Hand_Rank.index(:flush)
    elsif straight?
        @rank = Hand_Rank.index(:straight)
    elsif of_a_kind?(3)
        @rank = Hand_Rank.index(:trips)
    elsif two_pair?
        @rank = Hand_Rank.index(:two_pair)
    elsif of_a_kind?(2)
        @rank = Hand_Rank.index(:pair)
    else
        @rank = Hand_Rank.index(:high_card)
    end
  end

  def straight?
    sorted_values = @cards_arr.map {|el| el.value}.sort
    (sorted_values.first..sorted_values.first+4).to_a == sorted_values
  end

  def flush?
    @sorted_arr.all? { |card| card.suit == @sorted_arr.first.suit }
  end

  def of_a_kind?(num)
    matches = Hash.new { |k, v| k[v] = [] }
    @sorted_arr.each do |card|
      matches[card.value] << 1
    end
    matches.any? { |k, v| v.count == (num) }
  end

  def two_pair?
      @cards_arr.map {|el| el.value}.uniq.length == 3
  end
end
