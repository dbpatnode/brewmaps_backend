class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :brewery
  has_one :user
  # has_many :notes through: :brewery
  # has_one :brewery
  def brewery
    ActiveModel::SerializableResource.new(object.brewery, each_serializer: BrewerySerializer)
  end
end
