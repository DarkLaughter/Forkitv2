class Meal < ApplicationRecord
    has_many :user_meals
    has_many :users, through: :user_meals
    has_many :ratings
    has_many :comments


    def list_ingredients
        i_array = self.ingredient.split(",")
    end
end
