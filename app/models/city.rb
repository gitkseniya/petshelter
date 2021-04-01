class City < ApplicationRecord
  belongs_to :countries, optional: true
end
