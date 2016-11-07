class AddCategoriesToThings < ActiveRecord::Migration
  def change
    add_reference :things, :category, index: true, foreign_key: true
  end
end
