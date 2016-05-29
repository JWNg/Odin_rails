# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 
5.times do |n|
  code  = Faker::Address.country_code
  Airport.create!(code:  code)
end
                 
              

100.times do
  start_airport = Airport.all.sample
  destination_airport = Airport.all.sample
  date = Faker::Date.between(Date.today, 7.days.from_now)
  start_airport.departing_flights.create!(to_airport: destination_airport, start_date_time: date)
end
