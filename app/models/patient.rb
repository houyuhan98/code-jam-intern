class Patient < ApplicationRecord
  has_many :patient_placements
  has_many :wings, through: :patient_placements
  has_many :records

  validates :first_name, :last_name, :sex, :age, presence: true
  
  before_save :titleize

  def titleize 
    self.first_name = self.first_name.titleize
    self.last_name = self.last_name.titleize 
  end

  def name
    first_name + ' ' + last_name
  end
end
