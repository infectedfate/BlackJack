class Game
  attr_accessor :deck, :cards, :cash, :bet,

  def initialize()
    @dealer = Dealer.new
    @player = Player.new
    @deck = Deck.new
  end
end