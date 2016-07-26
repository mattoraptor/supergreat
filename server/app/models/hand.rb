class PlayableCard
  def initialize(player, num)
    @id = "#{player}card#{num}"
  end

  attr_reader :id
end

class Hand
  def initialize(player_name)
    @player_name = player_name
    @cards = []
    4.times do |num|
      @cards << PlayableCard.new(player_name, num)
    end
  end

  attr_reader :cards
  attr_reader :player_name
end
