class CreateUserMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_meals do |t|
      t.date :start_time
      t.string :meal_type
      t.integer :user_id
      t.integer :meal_id
      t.timestamps
    end
  end
end
