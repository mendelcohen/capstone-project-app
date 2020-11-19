class ChangeColumnInGoals < ActiveRecord::Migration[6.0]
  def change
    change_column :goals, :description, :text, default: Array 
  end
end
