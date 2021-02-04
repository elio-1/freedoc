require 'faker' #use faker gem to create random plausible names, cities, etc. 

50.times do 
City.create!(name: Faker::Nation.capital_city)
end

100.times do
Doctor.create!([{
  first_name: Faker::Name.first_name,
  },
  {
  last_name: Faker::Name.last_name,
  },
  {
  zip_code: Faker::Number.number(digits: 5)
},
{
  cities_id: rand(1..50)
}])
end

100.times do 
Patient.create!([{
  first_name: Faker::Name.first_name,
  },
  {
  last_name: Faker::Name.last_name,
}])
end

100.times do
 Appointment.create!(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, cities_id: City.all.sample.id) 
end
puts """
#{Doctor.count} doctors created.
#{City.count} cities created.
#{Patient.count} patients created.
"""

