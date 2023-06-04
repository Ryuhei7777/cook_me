class CreateSeasonings < ActiveRecord::Migration[6.1]
  def change
    create_table :seasonings do |t|

      t.timestamps
    end
  end
end
