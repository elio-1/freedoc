class RemoveColumnSpecialisationInDoctor < ActiveRecord::Migration[6.1]
  def change
    remove_column :doctors, :appointment
  end
end
