class GameplayChannel < ApplicationCable::Channel
  def subscribed
    stream_from "gameplay_#{params[:room]}"
  end

  def receive(data)
    game = GameCreator.last
    ActionCable.server.broadcast("gameplay_#{params[:room]}", game.to_dto)
  end
end
