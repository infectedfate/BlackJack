require_relative 'card'
require_relative 'deck'

class Player
  attr_accessor :name, :cash, :cards

  def initialize(name)
    @name = name
    @cash = 0
  end

  def take
    deck.get
  end

  def take_start_cards
    deck.get(2)
  end

  def return_cards
    @cards = nil
  end

  def player_cards
    @cards.map { |card| "#{card.value}#{card.suit}" }
  end

  def card_sum
    
  end

  def calculate
    
  end
end
