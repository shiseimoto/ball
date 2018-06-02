class BasketballsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def index
    @basketballs = Basketball.all
 end

  def show
    @basketball = Basketball.find(params[:id])
  end

  def new
    @basketball = Basketball.new
  end

  def create
    @basketball = Basketball.new(basketball_params)

    if @basketball.save
      redirect_to basketballs_path
    else
      render :new
    end
  end

   def edit
     @basketball = Basketball.find(params[:id])
   end

   def update
     @basketball = Basketball.find（params[:id]
     if @basketball.update(basketball_params)
       redirect_to basketballs_path
     else
       render :edit
     end
   end

   def destroy
     @basketball = Basketball.find(params[:id])
     @basketball.destroy
     redirect_to basketballs_path
     flash[:alert] = "已删除"
   end

  private

  def basketball_params
    params.require(:basketball).permit(:time, :league, :description, :signal)
  end
end
