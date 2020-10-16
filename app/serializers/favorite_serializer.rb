class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :brewery
  has_one :user
  has_one :brewery
end
