class Hand
  def initialize
    @cards = [0, 0, 0, 0]
  end

  attr_reader :cards
end

class GameState
  def initialize
    @hands = Array.new(4, Hand.new)
    @play_slots = Array.new(4, 0)
  end

  attr_reader :hands
  attr_reader :play_slots
end
