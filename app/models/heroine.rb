class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true

  def heroines
    Heroine.where("heroine_id == '#{self.id}'")
  end

end
