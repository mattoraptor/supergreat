class GameCreator
  def self.last
    if Game.exists?(1)
      game = Game.includes(players: [:cards]).last
      game
    else
      GameCreator.build
    end
  end

  def self.build
    game = Game.create
    4.times do |num|
      name = "player#{num}"
      player = game.players.create(name: name)
      4.times do |cnum|
        player.cards.create(name: "#{name}card#{cnum}")
      end
    end
    game
  end
end
