class UsersController < ApplicationController
    before_action :find_user, only: [:edit, :update, :show, :destroy]
    def index
        @user_meals = UserMeal.find_by(user_id: session[:user_id])
    end

    def new
        @user = User.new
    end
    
    def create
        @user = User.create(user_params)

        if @user.valid?
            session[:user_id] = user.id
            flash[:success] = ["All set, exited to prep with you", "Create a week to get Started"]
            redirect_to user_path(@user)
        else
            flash[:my_errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
        
    end
    
    def edit
    end
    
    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end
    
    def show
    end 
    
    def destroy
        @user.destroy
        redirect_to home_page_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation, :email, :img_url)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
