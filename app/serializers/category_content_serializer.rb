class CategoryContentSerializer < ActiveModel::Serializer
  attributes :id, :thing, :notes, :done
  has_one :category
end
