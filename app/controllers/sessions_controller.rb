class SessionsController < ApplicationController
    skip_before_action :authenticate_user, only: [:home, :new, :create]
    def home
    end

    def new
    end
     
    def create
       user = User.find_by(username: params[:username])
       if user && user.authenticate(params[:password])
           session[:user_id] = user.id
           flash[:success] = "Successfully Logged In!"
           redirect_to user_path(user.id)
       else
            flash[:errors] = "Invalid Username or Password"
           redirect_to root_path
       end
    end
       def destroy
        session[:user_id] = nil
        flash[:success] = "Successfully Logged Out!"
        redirect_to root_path
       end
end
