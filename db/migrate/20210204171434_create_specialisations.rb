class CreateSpecialisations < ActiveRecord::Migration[6.1]
  def change
    create_table :specialisations do |t|
      t.string :name
      t.timestamps
    end
  end
end
