class CreateSpecialisationsDoctorsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :specialisations, :doctors do |t|
    t.index :specialisation_id
    t.index :doctor_id
    end
  end
end
