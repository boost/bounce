class SessionsController < ApplicationController
  def create
    @player = Player.from_omniauth(request.env['omniauth.auth'])

    if @player.save
      session[:player_id] = @player.id
      flash[:success] = I18n.t('controllers.sessions.create.success')
    else
      flash[:warning] = I18n.t('controllers.sessions.create.warning')
    end

    redirect_to root_path
  end

  def destroy
    if current_player
      session.delete(:player_id)
      flash[:success] = 'See you!'
    end

    redirect_to root_path
  end
end
