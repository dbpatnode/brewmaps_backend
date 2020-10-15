class User < ApplicationRecord
    has_many :favorites
    has_many :notes
    has_many :favorited_breweries, through: :favorites, source: :brewery
    has_many :noted_breweries, through: :notes, source: :brewery

    has_secure_password
    validates_presence_of :username, :email, :password
    validates_uniqueness_of :username, :email

end
