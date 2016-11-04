class ThingSerializer < ActiveModel::Serializer
  attributes :id, :name, :categories

  def categories
    object.categories.pluck(:id)
  end
end
