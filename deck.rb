require_relative 'card'

class Deck
  attr_reader :deck

  def initialize
    @deck = create_deck
  end

  def create_deck
    deck = []
    Card::SUITS.each do |suit|
      Card::VALUES.each do |value|
        deck << Card.new(suit, value)
      end
    end
    deck.shuffle
  end

  def get_card(quantity = 1)
    @deck.shift(quantity)
  end

  def get_start_cards
    get_card(2)
  end
end
