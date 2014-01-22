class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :author_id, :image, :updated_at
  embed :id
  has_one :author
end
