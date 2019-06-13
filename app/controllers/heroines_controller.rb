class HeroinesController < ApplicationController
  def index
    # if params[:q]
    #   @heroines = Heroine.all.select{power.downcase.include?(params[:q].downcase)}
      # where(self.power.downcase.include?(params[:q].downcase))
    # else
      @heroines = Heroine.all
    # end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    redirect_to heroines_path
  end

private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
