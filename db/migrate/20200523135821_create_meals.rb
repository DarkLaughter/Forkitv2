class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :img_url
      t.string :name
      t.string :cuisine
      t.string :description
      t.string :ingredient
      t.string :diet
      t.timestamps
    end
  end
end
