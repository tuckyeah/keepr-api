class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :categories

  def categories
    object.categories.pluck(:id)
  end
end
