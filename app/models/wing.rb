class Wing < ApplicationRecord
  has_many :patient_placements
  has_many :patients, through: :patient_placements

  validates :name, :description, presence: true

  before_save :titleize

  def titleize 
    self.name = self.name.titleize
  end
end
