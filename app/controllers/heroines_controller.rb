class HeroinesController < ApplicationController
  before_action :self_find, only: [:show, :edit, :update, :destroy]

  def index
    @heroines = Heroine.all
  end

  def show
    @power = @heroine.power
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    heroine = Heroine.create(heroine_params)
    if heroine.valid?
      heroine.save
      redirect_to heroine_path(heroine)
    else
      flash[:message] = heroine.errors.full_messages[0]
      redirect_to new_heroine_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end




  private

  def self_find
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
