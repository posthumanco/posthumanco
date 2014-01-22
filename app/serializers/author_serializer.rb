class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :bio, :email
  embed :ids
  has_many :posts
end
