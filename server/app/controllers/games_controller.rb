class GamesController < ApplicationController
  def index
    @state = GameCreator.build
  end

  def state
    respond_to :json
    game = GameCreator.build
    render json: game.to_dto
  end

  def play_card
    render json: play_card_params
  end

  def play_card_params
    params.require(:player_id, :card_id, :play_slot_id)
  end
end
