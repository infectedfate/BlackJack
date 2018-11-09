class Card
  attr_reader :suit, :value

  SUITS = %w[♠ ♦ ♥ ♣].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze

  def initialize(suit, value)
    @suit = suit
    @value = value
    validate!
  end

  def validate!
    raise 'Неверное значение' if
    raise 'Неверное количество' if
  end
  
end
