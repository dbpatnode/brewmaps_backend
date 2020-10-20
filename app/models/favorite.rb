class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :brewery
  # has_many :notes through: :brewery
end
