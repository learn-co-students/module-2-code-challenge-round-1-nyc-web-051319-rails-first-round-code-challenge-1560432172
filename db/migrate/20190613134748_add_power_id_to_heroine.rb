class AddPowerIdToHeroine < ActiveRecord::Migration[5.1]
  def change
    add_column :heroines, :power_id, :integer
    add_foreign_key :heroines, :powers
  end
end
