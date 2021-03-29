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
      FactoryBot.create_list(:book, 4, library: library, available: false)
  end
end



# 5.times do
#   FactoryBot.create(:book)
# end
#
# 2.times do
#   FactoryBot.create(:library)
# end


# FactoryBot.create_list(:library, 1)
# FactoryBot.create_list(:book, 10)


# lib1 = Library.create!(id: 1, name: "ohlala", district_num: 5, public: false)
# lib2 = Library.create!(id: 2, name: "ohlala", district_num: 6, public: false)
# lib3 = Library.create!(id: 3, name: "ohlala", district_num: 1, public: true)
# lib4 = Library.create!(id: 4, name: "ohlala", district_num: 3, public: false)
# lib5 = Library.create!(id: 5, name: "ohlala", district_num: 5, public: false)
#
# book1 = lib1.books.create!(author: "ABC", name: "A zori zdes tihie", rating:4, available:true)
# book2 = lib2.books.create!(author: "xfgdg", name: "A zori zdes tihie", rating:4, available:true)
# book3 = lib3.books.create!(author: "hjkyu", name: "A zori zdes tihie", rating:4, available:true)
# book4 = lib4.books.create!(author: "dfgsd", name: "6666", rating:4, available:true)
# book5 = lib5.books.create!(author: "ABC", name: "A zori zdes tihie", rating:4, available:true)
# book6 = lib1.books.create!(author: "hgn", name: "09876", rating:4, available:true)
# book7 = lib2.books.create!(author: "ABC", name: "A zori zdes tihie", rating:4, available:true)
# book8 = lib2.books.create!(author: "hj", name: "sdgrt", rating:4, available:true)
# book9 = lib3.books.create!(author: "ABweC", name: "A zori zdes tihie", rating:4, available:true)
# book10 = lib5.books.create!(author: "ABC", name: "A zori zdes tihie", rating:4, available:true)
