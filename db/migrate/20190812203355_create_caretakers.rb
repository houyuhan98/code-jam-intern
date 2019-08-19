class CreateCaretakers < ActiveRecord::Migration[5.2]
  def change
    create_table :caretakers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end
end
