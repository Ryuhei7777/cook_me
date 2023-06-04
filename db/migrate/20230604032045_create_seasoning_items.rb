class CreateSeasoningItems < ActiveRecord::Migration[6.1]
  def change
    create_table :seasoning_items do |t|

      t.timestamps
    end
  end
end
