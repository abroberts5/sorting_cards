require './lib/cards'
require './lib/guess'
require 'minitest/autorun'
require 'minitest/pride'

class GuessTest < Minitest::Test
  def test_it_exist
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Guess, guess
  end

  def test_response_works
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_equal "10 of Hearts", guess.response
  end
  def test_card
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)

    assert_instance_of Card, guess.card
  end

  def test_correct
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    incorrect_guess = Guess.new("2 of Diamonds", card)

    assert_equal true, guess.correct?
    assert_equal false, incorrect_guess.correct?

  end

  def feeback_gives_answer
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    incorrect_guess = Guess.new("2 of Diamonds", card)

    assert_equal "Correct!", guess.feedback
    assert_equal "Incorrect.", incorrect_guess.correct?
  end
end
