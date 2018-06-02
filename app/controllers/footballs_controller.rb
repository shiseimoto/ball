class FootballsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @footballs = Football.all
 end

  def show
    @football = Football.find(params[:id])
  end

  def new
    @football = Football.new
  end

  def create
    @football = Football.new(football_params)

    if @football.save
      redirect_to footballs_path
    else
      render :new
    end
  end

   def edit
     @football = Football.find(params[:id])
   end

   def update
     @football = Football.find（params[:id]
     if @football.update(football_params)
       redirect_to footballs_path
     else
       render :edit
     end
   end

   def destroy
     @football = Football.find(params[:id])
     @football.destroy
     redirect_to footballs_path
     flash[:alert] = "已删除"
   end

  private

  def football_params
    params.require(:football).permit(:time, :league, :description, :signal)
  end
end
