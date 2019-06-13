class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
    # if params[:search]
    #   @search = params[:search]
    #   @heroines = Heroine.all.select do |heroine|
    #     heroine.power.name.downcase == @search.downcase
    #   end
    # else
    #   @heroines = Heroine.all
    # end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to @heroine
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
