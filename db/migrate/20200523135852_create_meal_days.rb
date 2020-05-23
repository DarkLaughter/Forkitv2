class CreateMealDays < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_days do |t|

      t.timestamps
    end
  end
end
