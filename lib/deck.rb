require_relative 'card'

class Deck
  attr_reader :cards
  SUITS = %w{Hearts Clubs Diamonds Spades}
  RANKS = (2..10).to_a + %w{Jack Queen King Ace}

  def initialize
    @cards = RANKS.product(SUITS).map { |el| Card.new(*el) }.shuffle
  end
  
  def deal_card
    @cards.shift
  end

end
