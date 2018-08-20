require './lib/cards'
require 'minitest/autorun'
require 'minitest/pride'

class SortingCardsTest < Minitest::Test
  def test_it_exist
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_it_has_attributes
    card = Card.new("Ace", "Spades")
    assert_equal "Spades", card.suit
    assert_equal "Ace", card.value
  end
end
