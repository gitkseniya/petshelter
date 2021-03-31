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
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
