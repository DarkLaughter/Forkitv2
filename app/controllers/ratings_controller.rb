class RatingsController < ApplicationController
    before_action :find_rating, only: [:edit, :update, :destroy]
    def new
        @rating = Rating.New
    end
    
    def create
        @rating = Rating.create(rating_params)
        if @rating.valid?
            redirect_to meal_path(@rating.meal_id)
        else
            flash[:errors] = @rating.errors.full_messages
            redirect_to meal_path(@rating.meal_id)
        end

    end
    
    def edit 
    end
    
    def update
        @rating.update(rating_params)
        if @rating.valid?
            redirect_to meal_path(@rating.meal_id)
        else
            flash[:errors] = @rating.errors.full_messages
            redirect_to meal_path(@rating.meal_id)
        end
    end
    
    def show
    
    end
    
    def destroy
        @rating.destroy 
        redirect_to meal_path(@rating.meal_id)
    end

    private
    def find_rating 
        @rating = Rating.find(params[:id])
    end

    def rating_params
        params.require(:rating).permit(:rating, :meal_id, :user_id)        
    end
end
