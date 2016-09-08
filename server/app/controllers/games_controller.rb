class GamesController < ApplicationController
  def index
    @state = GameCreator.build
  end

  def state
    respond_to :json
    game = GameCreator.build
    render json: game.to_dto
  end
end
