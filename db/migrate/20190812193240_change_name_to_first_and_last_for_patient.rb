class ChangeNameToFirstAndLastForPatient < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :name, :string
    add_column :patients, :first_name, :string
    add_column :patients, :last_name, :string
  end
end
