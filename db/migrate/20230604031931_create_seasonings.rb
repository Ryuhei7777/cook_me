class CreateSeasonings < ActiveRecord::Migration[6.1]
  def change
    create_table :seasonings do |t|
      t.integer :recipe_id,null: false
      t.integer :seasoning_item_id,null: false
      t.string :name,null: false
      t.integer :quantity,null: false
      t.timestamps
    end
  end
end
