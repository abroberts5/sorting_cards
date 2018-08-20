require './lib/sorting_cards.rb
require 'minitest/autorun'
require 'minitest/pride'
 
class SortingCardsTest < Minitest::Test
  card = Card.new("Ace", "Spades")
  assert_equal "Ace", card.value
  assert_equal "Spades, card.suit
end
