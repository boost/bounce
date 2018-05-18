class Api::PlayersController < ApplicationController
  def index
    render json: PlayerSerializer.new(Player.all).serializable_hash
  end
end
