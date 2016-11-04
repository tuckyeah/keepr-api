class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :things

  def things
    object.things.pluck(:id)
  end
end
