class Guess
  attr_reader :card,
              :response

  def initialize(response, card)
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
      binding.pry; require 'pry'
    end
  end
end
