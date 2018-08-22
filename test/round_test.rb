require './lib/cards'
require './lib/guess'
require './lib/deck'
require './lib/round'
require 'minitest/autorun'
require 'minitest/pride'

class RoundTest < Minitest::Test
  def test_it_exist
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_instance_of Round, round
  end

  def test_deck_value
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal deck, round.deck
  end

  def test_round_guesses_are_empty
    skip
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)

    assert_equal [], round.guesses
  end

  # def test_deck_value
  #   card_1 = Card.new("3","Hearts")
  #   card_2 = Card.new("4", "Clubs")
  #   deck = Deck.new([card_1, card_2])
  #   round = Round.new(deck)
  #
  #   assert_equal current_card, round.current_card
  # end

end
