class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.boolean :done, default: :false
      t.string :notes

      t.timestamps null: false
    end
  end
end
