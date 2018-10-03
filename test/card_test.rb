require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_it_has_attributes
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
    assert_equal "Spades", card.suit
  end

  def test_it_can_assign_number_to_values
    card = Card.new("Ace", "Spades")
    card_2 = Card.new("Queen", "Hearts")
    assert_equal 14, card.card_value_num
    assert_equal 12, card_2.card_value_num
  end

  def test_it_can_assign_number_to_suit
    card = Card.new("Ace", "Spades")
    card_2 = Card.new("Queen", "Hearts")
    assert_equal 4, card.card_suit_num
    assert_equal 3, card_2.card_suit_num
  end
end
