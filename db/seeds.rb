<<<<<<< HEAD
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
=======
Airline.destroy_all
Airport.destroy_all

jfk = Airport.create!(name: 'John F Kennedy', terminals: 6, international_hub: true)
jfk.airlines.create!(name:'Delta', flight_number: 717, domestic_flight: true)
jfk.airlines.create!(name:'United', flight_number: 431, domestic_flight: false)
jfk.airlines.create!(name:'American', flight_number: 414, domestic_flight: true)

ord = Airport.create!(name: "Chicago O' Hare", terminals: 4, international_hub: true)
ord.airlines.create!(name:'Spirit', flight_number: 714, domestic_flight: true)
ord.airlines.create!(name:'Frontier', flight_number: 117, domestic_flight: true)
ord.airlines.create!(name:'Southwest', flight_number: 222, domestic_flight: true)

fll = Airport.create!(name: 'Fort Lauderdale-Hollywood', terminals: 4, international_hub: true)
fll.airlines.create!(name:'Spirit', flight_number: 424, domestic_flight: true)
fll.airlines.create!(name:'United', flight_number: 513, domestic_flight: true)
fll.airlines.create!(name:'LUFTHANSA A.G.', flight_number: 022, domestic_flight: false)
>>>>>>> ec7d96e22c4611d91dca0e1fdc42f8fdf21d472f
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD


Country.destroy_all
City.destroy_all


england = Country.create!(name: 'England', population: 200, gdp: 50, has_monarch: true)
us = Country.create!(name: 'US', population: 500, gdp: 100, has_monarch: false)
athins = Country.create!(name: 'Athins', population: 100, gdp: 10, has_monarch: false)

england.cities.create!(name: 'London', population: 100, capital: true)
england.cities.create!(name: 'York', population: 50, capital: false)

us.cities.create!(name: 'New York', population: 250, capital: false)
us.cities.create!(name: 'Denver', population: 50, capital: false)

athins.cities.create!(name: 'Athins', population: 100, capital: true)
=======
>>>>>>> ec7d96e22c4611d91dca0e1fdc42f8fdf21d472f
