class PatientPlacement < ApplicationRecord
  belongs_to :patient
  belongs_to :wing
end
