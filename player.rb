require_relative 'card'
require_relative 'deck'

class Player
  attr_accessor :name, :cash, :cards

  def initialize(name)
    @name = name
    @cash = 0
  end

  def take
    
  end

  def pass
    
  end

  def return_cards
    @cards = nil
  end

  def player_cards
    @cards.map { |card| "#{card.value}#{card.suit}" }
  end
end
