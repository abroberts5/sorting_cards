class Deck
  attr_reader     :cards

  def initialize(cards)
    @cards      = cards
    @sorted     = []
  end

  def count
    @cards.count
  end

  def sort
    # require 'pry';binding.pry
  end
end
