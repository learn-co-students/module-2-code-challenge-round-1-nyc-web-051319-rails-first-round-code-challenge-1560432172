class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(params_heroine)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash[:messages] = "Please try again"
      redirect_to new_heroine_path
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end


  private
  def params_heroine
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end


end
