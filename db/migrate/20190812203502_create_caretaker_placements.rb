class CreateCaretakerPlacements < ActiveRecord::Migration[5.2]
  def change
    create_table :caretaker_placements do |t|
      t.references :record, foreign_key: true
      t.references :caretaker, foreign_key: true

      t.timestamps
    end
  end
end
