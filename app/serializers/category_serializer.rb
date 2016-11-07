class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :things
  has_many :things, through: :category_contents

  def things
    object.things.pluck(:id)
  end
end
