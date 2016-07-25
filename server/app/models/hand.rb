class PlayableCard
end

class Hand
  def initialize
    @cards = Array.new(4, PlayableCard.new)
  end

  attr_reader :cards
end
