class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    input = params[:query]
    if input
    @heroines = Heroine.all.select do |hero|
         hero.power.name.include?(input)
      end
    else

    end
  end

  def show
      @heroines = Heroine.find(params[:id])
      @power = Power.find(@heroines.power.id)
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
