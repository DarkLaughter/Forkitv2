class UserMealsController < ApplicationController
    before_action :find_user_meal, only: [:edit, :update, :destroy]
    
    def new
    @user_meal = UserMeal.new
    end
    
    def create
    @user_meal = UserMeal.create(user_meal_params)
    
        if @user_meal.valid?
            redirect_to users_path
        else
            flash[:errors] = @user_meal.errors.full_messages
            redirect_to meal_path(@user_meal.meal)
        end
    end
    
    def edit
        @user_meal = UserMeal.find(params[:id])
    end
    
    def update
        @user_meal = UserMeal.find(params[:id])
        @user_meal.update(user_meal_params)
        if @user_meal.valid?
            redirect_to meal_path(@user_meal.meal)
        else
           flash[:errors] = @user_meal.errors.full_messages
           redirect_to meal_path(@user_meal.meal) 
        end
    end
    
    def destroy
        @user_meal.destroy
        redirect_to users_path
    end

    private
    def user_meal_params
        params.require(:user_meal).permit(:date, :time, :meal_type, :user_id, :meal_id)
    end

    def find_user_meal
        @user_meal = UserMeal.find(params[:id])        
    end
end
