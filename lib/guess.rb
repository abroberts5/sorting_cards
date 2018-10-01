class Guess
  attr_reader       :guess,
                    :card

  def initialize(guess, card)
    @guess      = guess
    @card       = card
  end

  def response
    @guess
  end

  def correct?
    if @guess == "#{@card.value} of #{@card.suit}"
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      return "Correct!"
    else
      return "Incorrect."
    end
  end

end
