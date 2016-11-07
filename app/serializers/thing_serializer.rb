class ThingSerializer < ActiveModel::Serializer
  attributes :id, :name, :categories
  has_many :categories, through: :category_contents

  def categories
    object.categories.pluck(:id)
  end
end
