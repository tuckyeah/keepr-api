class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :things, :category_contents
  has_many :things, through: :category_contents

  def things
    object.things.pluck(:id)
  end

  def category_contents
    object.category_contents.pluck(:id)
  end
end
