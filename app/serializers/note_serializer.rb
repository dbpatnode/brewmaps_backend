class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :review, :atmosphere, :rating
  has_one :user
  has_one :brewery
end
