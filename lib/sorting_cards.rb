class Card
  attr_reader :value,
              :suit

  value = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]
  suit = ["Spades", "Hearts", "Diamonds", "Clubs"]

  def initialize(value, suit)
    @value = value
    @suit = suit
    require 'pry'; binding.pry
  end

  def guess(card)
    if card == @value, @suit
      "#{@value} of #{@suit}"
    else card != @value, @suit
      false
  end

end
