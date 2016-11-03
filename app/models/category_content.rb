class CategoryContent < ActiveRecord::Base
  belongs_to :category, inverse_of: :category_contents
  belongs_to :thing, inverse_of: :category_contents
end
