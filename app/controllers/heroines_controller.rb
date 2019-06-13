class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :destroy]

  def index
    @heroines = Heroine.search(params[:search])
  end

  def show
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    heroine = Heroine.new(heroine_params)
    if heroine.valid?
      heroine.save
      redirect_to heroine
    else
      flash[:message] = heroine.errors.full_messages[0]
      redirect_to new_heroine_path
    end
  end

  # def destroy
  #   @heroine.delete
  #   redirect_to heroines_path
  # end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end
end
