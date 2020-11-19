class AddCompletedToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :completed, :string
  end
end
