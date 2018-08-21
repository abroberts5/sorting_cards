class Guess
  attr_reader :card,
              :response

  def initialize("10 of Hearts", card)
    @card = card
    @response = response
  end

  def guess(card)
    if card == @value, @suit
      "#{@value} of #{@suit}"
    else card != @value, @suit
      false
  end

  # require 'pry'; binding.pry

end
