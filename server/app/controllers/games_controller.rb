class GamesController < ApplicationController
  def index
    @state = GameCreator.last
  end

  def state
    respond_to :json
    game = GameCreator.last
    render json: game.to_dto
  end
end
