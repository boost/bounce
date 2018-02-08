class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_player
    @current_player ||= Player.find_by(id: session[:player_id])
  end

  def authorize
    redirect_to root_path unless current_player
  end

  helper_method :current_player
  helper_method :authorize
end
