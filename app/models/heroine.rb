class Heroine < ApplicationRecord
  validates :super_name, uniqueness: true
  belongs_to :power

  # def self.search(search)
  #   if search
  #     power = Power.find_by(name: search)
  #     if power
  #       self.where(power_id: power)
  #     else
  #       Heroine.all
  #     end
  #   else
  #     Heroine.all
  #   end

  # end
end
