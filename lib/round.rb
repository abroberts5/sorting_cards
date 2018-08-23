require './lib/guess'

class Round
  attr_reader     :deck,
                  :guesses

  def initialize(deck)
    @deck         = deck
    @guesses      = []
  end

  def current_card
    deck.cards[0]
  end

  def record_guess(guess)
    response = "#{guess[:value]} of #{guess[:suit]}"
    g = Guess.new(current_card, response)
    puts g.inspect
  end
  
end

# card_1 = Card.new("3","Hearts")
# card_2 = Card.new("4", "Clubs")
# deck = Deck.new([card_1, card_2])
# round = Round.new(deck)
# round.record_guess({value: "3", suit: "Hearts"})
