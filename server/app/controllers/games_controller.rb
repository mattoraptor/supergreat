class GamesController < ApplicationController
  def index
    @state = GameState.new
  end

  def state
    respond_to :json
    render json: GameState.new
  end
end
