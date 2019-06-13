class HeroinesController < ApplicationController
before_action :find_heroine, only: [:show, :edit, :update] #if the delete/destory method was asked in the deliverabels then I would have included :destroy in the before action

  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def show
  end


  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      # Although this was not asked as well, this message simply tells the user that heroine that they created was succesfully made.
      flash[:success] = "Sucessfully created #{@heroine.super_name}"
      redirect_to @heroine
    else
      #this flash message will inform the user that the super_name they inputed when creating a new heroine was already taken
      flash[:message] = @heroine.errors.full_messages[0]
      redirect_to new_heroine_path
    end
  end

  # def destroy                      I kno this wasnt asked on the deliverabels but I wanted to make sure I still knew how to do the method
  #   @heroine.delete
  #   redirect_to heroines_path
  # end



  private

#this helper method helps to save a few lines of code and is the method mentioned in the before_action above
  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

#this helper method also helps me save some time by creating a simple and efficient way to capture all the parameters that are required when creating a new heroine, could also use when editing a heroine, I am aware that was not asked for as a deliverable though
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end
end
