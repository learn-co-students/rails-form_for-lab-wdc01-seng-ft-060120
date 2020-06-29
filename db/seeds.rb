# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create([{ first_name: 'Mack' , last_name: "Timmons"}, { first_name: 'Tack' , last_name: "Limmons" }])

SchoolClass.create([{ title: 'Art' , room_number: "1"}, { title: 'Music' , room_number: "2" }])