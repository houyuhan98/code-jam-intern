class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :description
      t.datetime :admitted_at
      t.references :patient, foreign_key: true
      t.timestamps
    end
  end
end
