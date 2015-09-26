# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  name = Faker::Name.name
  location = "Vancouver, BC"
  Driver.create({name: name, location: location})
end

10.times do
  title = Faker::Name.title
  note = "We will will on this Hackathon! Thank you, Vancouver Startup Week! :)"
  endingpoint = "Richmond, BC"
  driver_id = 1
  Trip.create({title: title, note: note, endingpoint: endingpoint, driver_id: driver_id})
end
