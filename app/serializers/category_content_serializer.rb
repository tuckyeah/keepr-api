class CategoryContentSerializer < ActiveModel::Serializer
  attributes :id, :thing, :notes, :done, :category

  def category
    object.category.id
  end

  def thing
    object.thing.id
  end
end
