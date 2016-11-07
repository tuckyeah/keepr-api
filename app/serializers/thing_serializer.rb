class ThingSerializer < ActiveModel::Serializer
  attributes :id, :name, :done, :notes
  belongs_to :category

  def category
    object.category.id
  end
end
