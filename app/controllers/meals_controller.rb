class MealsController < ApplicationController

    def index
        @meals = Meal.all
    end

    def show
    @meal = Meal.find(params[:id])    
    @user_meal = UserMeal.new    
    end

end
