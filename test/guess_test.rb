require './lib/cards'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'

class GuessCardsTest < Minitest::Test
  def test_it_exist
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end
end
  # def test_gives_response
  #   guess = Guess.new("10 of Hearts", card)
  #   assert_equal "10 of Hearts", guess.response
  # end
