class Card
  attr_reader     :value,
                  :suit

  def initialize(value, suit)
    @value      = value
    @suit       = suit
  end

  def card_value_num
    values = {"2" => 2, "3" => 3, "4" => 4,
              "5" => 5, "6" => 6, "7" => 7,
              "8" => 8, "9" => 9, "10" => 10,
              "Jack" => 11, "Queen" => 12,
              "King" => 13, "Ace" => 14}
    values[@value]
  end

  def card_suit_num
    values = {"Clubs" => 1, "Diamonds" => 2,
              "Hearts" => 3, "Spades" => 4}
    values[@suit]
  end
end
