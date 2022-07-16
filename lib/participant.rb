# player and dealer classes inherit common behaviors from participant class


class Participant
  attr_accessor :hand
  def initialize
    @hand = []
  end

  def total
    @hand.map {|card| card.value}.sum 
  end

  def bust?
    self.total > 21
  end

  def joinand(array)
    return array[0] if array.length == 1
    "#{array[0...-1].join(', ')} and #{array.last}"
  end

  def show_hand
    joinand(self.hand)
  end

end

class Dealer < Participant
  def show_initial_hand
    self.hand.first
  end


end

class Player < Participant

end
