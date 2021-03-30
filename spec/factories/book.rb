FactoryBot.define do
  factory :book, class: Book do
    association :library, factory: :library
    available { [true, false].sample }
    rating { Faker::Number.between(from: 1, to: 5) }
    name { Faker::TvShows::GameOfThrones.unique.character }
    author { Faker::Games::SuperMario.character }
  end
end
