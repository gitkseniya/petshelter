require 'factory_bot_rails'
Airline.destroy_all
Airport.destroy_all
Book.destroy_all
Library.destroy_all

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

3.times do
  FactoryBot.create(:library) do |library|
    FactoryBot.create_list(:book, 4, library: library)
  end
end

1.times do
  FactoryBot.create(:library) do |library|
  end
end

2.times do
  FactoryBot.create(:library) do |library|
    FactoryBot.create_list(:book, 4, library: library)
  end
end
