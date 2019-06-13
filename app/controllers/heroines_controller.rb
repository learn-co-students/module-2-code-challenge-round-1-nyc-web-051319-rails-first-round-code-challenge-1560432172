class HeroinesController < ApplicationController
  def index
    
    if params[:q]

      @heroines = Heroine.all.select do |heroine|
        heroine.power.name.downcase.include?(params[:q].downcase)
      end
      else
    @heroines = Heroine.all
    end
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    heroine = Heroine.new(heroine_params)
    if heroine.valid?
        heroine.save
        redirect_to heroine_path(heroine)
    else
        flash[:message] = heroine.errors.full_messages[0]
        redirect_to new_heroine_path
    end

  end
  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.delete
    redirect_to heroines_path
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name,:super_name,:power_id)
  end
end
