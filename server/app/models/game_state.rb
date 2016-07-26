class GameState
  def initialize
    @hands = []
    4.times do |num|
      @hands << Hand.new("player#{num}")
    end
  end

  attr_reader :hands
end
