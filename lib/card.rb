# card class handles responsibilites of a card, such as rank, suit, value

class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{@rank} of #{@suit}"
  end

  def value
    case @rank
      when 'King', 'Queen', 'Jack' then 10
      when 'Ace'                   then 11
      else                         @rank
    end
  end

  def image
    filename = "/images/#{self.to_s.split.join('_')}.png"
  end
end
