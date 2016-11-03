class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user
  has_many :category_contents
end
