class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user
  has_many :things

  def things
    object.things.pluck(:id)
  end

  def user
    object.user.id
  end
end
