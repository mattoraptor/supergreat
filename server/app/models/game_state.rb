class GameState
  def initialize
    @hands = []
    4.times do |num|
      @hands << Hand.new("player#{num}")
    end
    @play_slots = Array.new(4, 0)
  end

  attr_reader :hands
  attr_reader :play_slots
end
