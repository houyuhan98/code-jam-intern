class Caretaker < ApplicationRecord
  has_many :caretaker_placements
  has_many :records, through: :caretaker_placements
  has_many :patients, through: :records

  validates :first_name, :last_name, :title, presence: true
  
  before_save :titleize

  def titleize
    self.first_name = self.first_name.titleize
    self.last_name = self.last_name.titleize
  end
  
  def name
    first_name + ' ' + last_name
  end
end
