class GameState
  def initialize
    @hands = [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
  end

  attr_reader :hands
end
