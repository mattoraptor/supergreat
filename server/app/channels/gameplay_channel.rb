class GameplayChannel < ApplicationCable::Channel
  def subscribed
    stream_from "gameplay_#{params[:room]}"
  end

  def receive(data)
    ActionCable.server.broadcast("gameplay_#{params[:room]}", data)
  end
end
