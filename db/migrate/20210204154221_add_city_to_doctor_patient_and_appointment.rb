class AddCityToDoctorPatientAndAppointment < ActiveRecord::Migration[6.1]
  def change
    add_reference :doctors, :cities, foreign_key: true
    add_reference :patients, :cities, foreign_key: true
    add_reference :appointments, :cities, foreign_key: true
  end
end
