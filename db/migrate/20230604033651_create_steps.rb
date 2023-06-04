class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|

      t.timestamps
    end
  end
end
