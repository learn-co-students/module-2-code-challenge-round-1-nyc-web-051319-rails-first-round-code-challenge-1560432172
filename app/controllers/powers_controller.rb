class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def edit
    @power = Power.find(params[:id])
  end

  def show
    @power = Power.find(params[:id])
    redirect_to @power
  end

  def create
    @power = Power.create(params[:id])
    redirect_to @power
  end
  
  def destroy

  end
end
