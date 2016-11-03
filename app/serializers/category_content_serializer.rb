class CategoryContentSerializer < ActiveModel::Serializer
  attributes :id, :thing
  has_one :category
end
