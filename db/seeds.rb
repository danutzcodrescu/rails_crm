# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Contact.destroy_all


title=["Mr", "Ms", "Prof", "Dr"]

50.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    prefix = title.sample
    organization = Faker::Company.name
    position = Faker::Name.title
    email = Faker::Internet.email
    Contact.create!(First_Name: first_name, Last_Name: last_name, Title: prefix, Organization: organization, Position: position, Email: email)
end