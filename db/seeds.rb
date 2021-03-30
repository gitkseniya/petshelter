require 'factory_bot_rails'

Book.destroy_all
Library.destroy_all

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

Rails.logger "Created #{Library.count} Libraries and #{Book.count} Books "
