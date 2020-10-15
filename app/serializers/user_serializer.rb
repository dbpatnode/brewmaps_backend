class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :favorites
  has_many :notes
end
