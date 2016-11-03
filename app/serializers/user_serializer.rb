class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :categories
end
