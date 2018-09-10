module SessionsHelper
  def current_my_guild
    @current_my_guild ||= My_guild.find_by(id: session[:my_guild_id])
  end

  def logged_in?
    current_my_guild.present?
  end
end
