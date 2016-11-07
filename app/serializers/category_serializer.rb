class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :things

  def things
    object.things.pluck(:id)
  end
end
