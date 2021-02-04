require 'faker' #use faker gem to create random plausible names, cities, etc. 

100.times do
Doctor.create!([{
  first_name: Faker::Name.first_name,
  },
  {
  last_name: Faker::Name.last_name,
  },
  {
  zip_code: Faker::Number.number(digits: 5)
}])
end

50.times do 
City.create!(name: Faker::Nation.capital_city)
end

100.times do 
Patient.create!([{
  first_name: Faker::Name.first_name,
  },
  {
  last_name: Faker::Name.last_name,
}])
end

puts """
#{Doctor.count} doctors created.
#{City.count} cities created.
#{Patient.count} patients created.
"""

