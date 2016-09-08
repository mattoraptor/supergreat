class GameCreator
  def self.build
    if Game.exists?
      Game.last
    else
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
end
