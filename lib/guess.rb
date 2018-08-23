class Guess
  attr_reader :card,
              :response

  def initialize(card, response)
    @card     = card
    @response = response
  end

  def correct?
    if @response == "#{card.value} of #{card.suit}"
      true
    else
      false
    end
  end

  def feedback
    if correct? == true
      "Correct!"
    else correct? == false
      "Incorrect."
    end
  end
end
