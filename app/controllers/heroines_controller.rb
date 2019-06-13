class HeroinesController < ApplicationController
  def index
    if params[:search]
      @heroines = Heroine.search_by_power(params[:search])
    else
      @heroines = Heroine.all
    end
  end

  def show
    @heroine  = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      redirect_to new_heroine_path()
    end
  end

  private

  def heroine_params
    params.require(:heroine ).permit(:name, :super_name, :power_id, :search)
  end
end
