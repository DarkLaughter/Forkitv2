class CreateUserMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_meals do |t|

      t.timestamps
    end
  end
end
