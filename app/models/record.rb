class Record < ApplicationRecord
  has_many :caretaker_placements
  has_many :caretakers, through: :caretaker_placements
  belongs_to :patient

  validates :patient_id, :description, :admitted_at, presence: true
end
