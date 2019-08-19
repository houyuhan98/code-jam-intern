class CreatePatientPlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_placements do |t|
      t.references :patient, foreign_key: true
      t.references :wing, foreign_key: true

      t.timestamps
    end
  end
end
