class AddPowerToHeroines < ActiveRecord::Migration[5.1]
  def change
    add_reference :heroines, :power, foreign_key: true
    #This took way too long to do, I had a brain poof
  end
end
