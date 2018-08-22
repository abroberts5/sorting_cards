require './lib/cards'
require './lib/guess'
require './lib/deck'
require 'minitest/autorun'
require 'minitest/pride'

class DeckTest < Minitest::Test
  def test_it_exist
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    assert_instance_of Deck, deck
  end

  def cards_match_deck
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal [card_1, card_2, card_3], deck.cards
  end

  def card_count_matches
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])

    assert_equal 3, deck.count
  end
end
