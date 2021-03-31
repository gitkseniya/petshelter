# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
