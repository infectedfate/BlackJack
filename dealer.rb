require_relative 'player'

class Dealer < Player
  def take_card?
    card_sum < 17 && @hand.cards.size == 2
  end

  def hide_cards
    @hand.cards.map { '*' }.join(' ')
  end
end
