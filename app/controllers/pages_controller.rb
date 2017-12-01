class PagesController < ApplicationController
  def home
    @players = Player.all
    @game = Game.new
  end
end
