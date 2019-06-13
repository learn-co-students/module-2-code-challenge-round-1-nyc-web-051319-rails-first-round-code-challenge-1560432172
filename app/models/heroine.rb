class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, :uniqueness => {:case_sensitive => false}

  # match search term with power and return list of heroines with matched power
  def self.search(search)
    heroines = Heroine.all
    if search
      power = Power.where('name LIKE ?', "%#{search}%")
      if power[0]
        heroines = power[0].heroines
      end
    end
    heroines
  end
end
