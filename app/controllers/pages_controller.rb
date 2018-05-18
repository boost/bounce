class PagesController < ApplicationController
  def home
    @players = Player.all
    @game = Game.new

    @game.build_winner
    @game.build_loser

    # Assign to session so we can access to games controller
    session[:game] = @game
    session[:winner_ids] = []
    session[:loser_ids] = []
  end

  def index
    @players = Player.all
  end
end
