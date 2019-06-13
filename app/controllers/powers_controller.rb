class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.create(power_params)
    redirect_to power_path
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    @power.update(power_params)
  end

  def destroy
    @power = Power.find(params[:id])
    @power.delete
    redirect_to powers_path
  end

  private

  def power_params
    params.require(:power).permit(:name, :super_name, :power_id)
  end
end
