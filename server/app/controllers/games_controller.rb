class GamesController < ApplicationController
  def index
  end

  def state
    respond_to :json
    render json: GameState.new
  end
end
