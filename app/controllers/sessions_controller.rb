class SessionsController < ApplicationController
  def new
  end

  def create
    my_guild = My_guild.find_by(g_name: params[:session][:g_name])
    if my_guild && my_guild.authenticate(params[:session][:password])
      session[:my_guild_id] = my_guild.id
      redirect_to my_guild_path(my_guild.id)
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  def destroy
    session.delete(:my_guild_id)
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
