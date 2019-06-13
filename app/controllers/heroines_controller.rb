class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @hero = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.errors
      redirect_to "/heroines/new"
      flash[:notice] = @heroine.errors.full_messages[0]
    else
      redirect_to @heroine
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
