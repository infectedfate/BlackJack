class Card
  attr_reader :suit, :value

  SUITS = %w[♠ ♦ ♥ ♣].freeze
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A'].freeze

  def initialize(suit, value)
    @suit = suit
    @value = value
    validate!
  end

  private

  def validate!
    raise 'No valid value' unless VALUES.include?(@value)
    raise 'No valid suit' unless SUITS.include?(@suit)
  end
end
