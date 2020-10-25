class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :category_id
      t.text :description
      t.date :begin_date
      t.date :end_date
      t.string :image_url

      t.timestamps
    end
  end
end
