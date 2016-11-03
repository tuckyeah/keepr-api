class Thing < ActiveRecord::Base
  has_many :categories, through: :category_contents
  has_many :category_contents
end
