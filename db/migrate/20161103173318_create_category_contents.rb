class CreateCategoryContents < ActiveRecord::Migration
  def change
    create_table :category_contents do |t|
      t.references :category, index: true, foreign_key: true
      t.references :thing, index: true, foreign_key: true
      t.boolean :done, default: :false

      t.timestamps null: false
    end
  end
end
