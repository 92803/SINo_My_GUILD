class SessionsController < ApplicationController
  def index
  end

  def create
    guild = Guild.find_by(gname: params[:session][:gname])
    if guild && guild.authenticate(params[:session][:password])
      session[:guild_id] = guild.id
      redirect_to guild_path(guild.id)
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  def destroy
    session.delete(:guild_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
