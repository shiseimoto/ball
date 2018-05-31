class Admin::GamesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @games = Game.all
 end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

   def edit
     @game = Game.find(params[:id])
   end

   def update
     @game = Game.find（params[:id]
     if @game.update(game_params)
       redirect_to games_path
     else
       render :edit
     end
   end

   def destroy
     @game = Game.find(params[:id])
     @game.destroy
     redirect_to games_path
     flash[:alert] = "已删除"
   end

  private

  def game_params
    params.require(:game).permit(:time, :league, :signal)
  end
end
