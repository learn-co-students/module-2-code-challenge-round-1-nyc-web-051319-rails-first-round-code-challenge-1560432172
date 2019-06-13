class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true

  def self.search_by_power(power)
    self.all.select do |heroine|
      heroine.power.name.downcase.include?(power.downcase)
    end
  end

end
