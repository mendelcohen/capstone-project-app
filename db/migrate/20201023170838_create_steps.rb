class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.date :date
      t.integer :goal_id
      t.text :comment

      t.timestamps
    end
  end
end
