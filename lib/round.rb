class Round
  attr_reader   :deck,
                :guesses,
                :number_correct

  def initialize(deck)
    @deck       = deck
    @guesses    = []
    @number_correct = 0
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(hash)
    guess_card = "#{hash[:value]} of #{hash[:suit]}"
    new_guess = Guess.new(guess_card, current_card)
    @guesses << new_guess
    if new_guess.correct? == true
      @number_correct += 1
    end
    new_guess
  end

  def percent_correct
    @guesses.count.to_f / @number_correct.to_f
  end
end
