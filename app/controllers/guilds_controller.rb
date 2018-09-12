class GuildsController < ApplicationController
  before_action :set_guild, only: [:show, :edit, :update, :destroy]
  def new
    @guild = Guild.new
  end

  def create
   @guild = Guild.new(guild_params)
   if @guild.save
     redirect_to sessions_path(@guild.id)
   else
     render 'new'
   end
  end

  def show
    @guild = Guild.find(params[:id])
  end

  private
  def set_guild
    @guild = Guild.find(params[:id])
  end

  def guild_params
    params.require(:guild).permit(:gname, :image, :password,:password_confirmation)
  end
end
