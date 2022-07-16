require_relative 'deck'
require_relative 'participant'

class BlackJack
  
  def initialize
    @player = Player.new
    @dealer = Dealer.new
  end

  def shuffle
    @shoe = Deck.new
  end

  def initial_deal
    2.times do
      @player.hand << @shoe.deal_card
      @dealer.hand << @shoe.deal_card
    end
  end

  def show_cards
    @player.show_hand
    @dealer.show_initial_hand
  end

  def player_busts
    dealer_wins
    "You bust, Dealer takes this hand!"
  end

  def dealer_busts
    player_wins
    "Dealer busts, You take this hand! Well played!"
  end

  def hit_or_stay
    if params[:hit?] == "true"
      @player.hand << @show.deal_card
    else
      dealer_turn
    end
  end

  def dealer_turn
    @dealer.show_cards
    until @dealer.total >= 17
      @dealer.hand << @shoe.deal_card
      dealer_busts if @dealer.total > 21
    end
  end
end

game = BlackJack.new
game.shuffle
game.initial_deal
game.show_cards
