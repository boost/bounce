class GamesController < ApplicationController
  before_action :find_player, only: [:add_winner, :add_loser]
  before_action :set_game, only: [:add_winner, :add_loser]

  def create
    @game = Game.new(game_params)

    if @game.save
      reset_session
      redirect_to stats_path
    end
  end

  def add_winner
    if session[:winner_ids].count < 2
      session[:winner_ids] << @player.id
      @players = Player.all.reject { |p| [*session[:winner_ids], *session[:loser_ids]].include?(p.id) }
      update_player_ids_session
    else
      render :js => "alert('You cannot have more than 2 players. Duh');" 
    end
  end

  def add_loser
    if session[:loser_ids].count < 2
      session[:loser_ids] << @player.id
      @players = Player.all.reject { |p| [*session[:winner_ids], *session[:loser_ids]].include?(p.id) }
      update_player_ids_session
    else
      render :js => "alert('You cannot have more than 2 players. Duh');" 
    end
  end

  private

  def game_params
    params.require(:game).permit(winner_attributes: [:name, :player_ids], loser_attributes: [:name, :player_ids])
  end

  def find_player
    @player = Player.find(params[:id])
  end

  def set_game
    @game = Game.new(session[:game])
  end

  def update_player_ids_session
    @game.build_winner.players << Player.find(session[:winner_ids])
    @game.build_loser.players << Player.find(session[:loser_ids])
  end

  def reset_session
    session[:game] = nil
    session[:winner_ids] = []
    session[:loser_ids] = []
  end
end