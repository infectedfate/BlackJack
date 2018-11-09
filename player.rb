require_relative 'deck'

class Player
  attr_accessor :name, :cash, :cards

  def initialize(name)
    @name = name.capitalize
    @cash = 100
  end

  def give_cash(value)
    @cash += value
  end

  def take_cash(value)
    @cash -= value
  end

  def do_bet
    @cash -= 10
  end

  def take
    deck.get_card
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
end
