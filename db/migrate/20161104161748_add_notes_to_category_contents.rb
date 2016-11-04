class AddNotesToCategoryContents < ActiveRecord::Migration
  def change
    add_column :category_contents, :notes, :string
  end
end
