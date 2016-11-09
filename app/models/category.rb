class Category < ActiveRecord::Base
  belongs_to :user
  has_many :things, through: :category_contents
  has_many :category_contents, -> { order(created_at: :asc) },
                                  dependent: :destroy
end
