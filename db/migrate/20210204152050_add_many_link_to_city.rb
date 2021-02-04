class AddManyLinkToCity < ActiveRecord::Migration[6.1]
  def change
      add_reference :cities, :doctors, foreign_key: true
      add_reference :cities, :patients, foreign_key: true
      add_reference :cities, :appointments, foreign_key: true
  end
end
