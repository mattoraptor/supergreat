class GameplayChannel < ApplicationCable::Channel
  def subscribed
    stream_from "gameplay_#{params[:room]}"
  end

  def receive(data)
    game = GameCreator.last
    body = data['body']
    if body['action'] == 'play'
      game.play_card body['player_id'], body['card_id'], body['play_slot_id']
    end
    ActionCable.server.broadcast("gameplay_#{params[:room]}", game.to_dto)
  end
end
