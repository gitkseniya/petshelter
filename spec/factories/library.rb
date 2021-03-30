FactoryBot.define do
  factory :library, class: Library do
    public { [true, false].sample }
    district_num { Faker::Number.between(from: 1, to: 18) }
    name { Faker::TvShows::TwinPeaks.unique.character }
  end
end
