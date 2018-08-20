class Card
  attr_reader :value,
              :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    # require 'pry'; binding.pry
  end

  # def guess(card)
  #   if card == @value, @suit
  #     "#{@value} of #{@suit}"
  #   else card != @value, @suit
  #     false
  # end

end
