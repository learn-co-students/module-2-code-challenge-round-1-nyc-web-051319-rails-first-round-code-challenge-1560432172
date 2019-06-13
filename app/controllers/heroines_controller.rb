class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @powers = Power.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      flash[:message] = @heroine.errors.full_messages[0]
      redirect_to "/heroines/new"
    end
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(parmas[:id])
    @heroine.update(heroine_params)
    redirect_to @heroine
  end

  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.delete
    redirect_to "/heroines"
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
