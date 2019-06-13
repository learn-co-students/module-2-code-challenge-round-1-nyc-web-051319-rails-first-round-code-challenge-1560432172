class AddPowerIdAndHeroineId < ActiveRecord::Migration[5.1]
  def change
    add_column :powers, :heroine_id, :integer
    add_column :heroines, :power_id, :integer
  end
end
