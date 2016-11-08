class ThingSerializer < ActiveModel::Serializer
  attributes :id, :name, :categories, :category_contents
  has_many :categories, through: :category_contents

  def categories
    object.categories.pluck(:id)
  end

  def category_contents
    object.category_contents.pluck(:id)
  end
end
