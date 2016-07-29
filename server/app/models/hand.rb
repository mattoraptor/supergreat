class Hand
  def initialize(player_name)
    @player_name = player_name
    @cards = []
    4.times do |num|
      @cards << PlayableCard.create(name: "#{player_name}card#{num}")
    end
  end

  attr_reader :cards
  attr_reader :player_name
end
