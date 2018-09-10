class MyGuildsController < ApplicationController
  before_action :set_my_guild, only: [:new,:show, :edit, :update, :destroy]
  def new
    @my_guild = My_guild.new
  end

  def create
    @my_guild = My_guild.new(my_guild_params)
    if @my_guild.save
      redirect_to my_guild_path(@my_guild.id)
    else
      render 'new'
    end
  end

  def show
   @my_guild = My_guild.find(params[:id])
  end

  private
  def set_my_guild
    @my_guild = My_guild.find(params[:id])
  end

  def my_guild_params
    params.require(:user).permit(:name, :image, :password,:password_confirmation)
  end
end
