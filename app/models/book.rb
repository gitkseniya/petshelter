class Book < ApplicationRecord
  validates :name, presence: true
  validates :rating, presence: true
  validates :author, presence: true

  belongs_to :library
end
