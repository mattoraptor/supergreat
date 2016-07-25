class GamesController < ApplicationController
  def index
  end

  def state
    respond_to :json
    state = GameState.new
    render json: state
  end
end
