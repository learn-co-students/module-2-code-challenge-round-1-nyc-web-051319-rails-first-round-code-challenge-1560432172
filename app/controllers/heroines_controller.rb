class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @power = Power.all
  end

  def edit
    @heroine = Heroine.find(params[:id])
    @power = Power.all
  end

  def create
    @heroine = Heroine.create(params[:id])
    redirect_to @heroine
  end

  def show
    @heroine = Heroine.find(params[:id])
    redirect_to @heroine
  end

  def destroy

  end

  private

  def heroine_params
    params.require(:id).permit(:name, :super_name)
  end
end
