require_relative 'card'
require_relative 'player'
require_relative 'deck'
require_relative 'card'
require_relative 'interface'

class Game
  attr_accessor :deck, :cards, :cash, :bet,

  def initialize()
    @dealer = Dealer.new
    @player = Player.new
    @deck = Deck.new
  end

  def run
    
  end
end
