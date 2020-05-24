class CommentsController < ApplicationController
    before_action :find_comment, only: [:edit, :update, :destroy]
    def new
        @comment = Comment.new
    end
    
    def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            redirect_to meal_path(@comment.meal_id)
        else
            flash[:errors] = @comment.errors.full_messages
            redirect_to meal_path(@comment.meal_id)
        end
    end
    
    def edit
    end
    
    def update
        @comment.update(comment_params)
        if @comment.valid?
            redirect_to meal_path(@comment.meal_id)
        else
            flash[:errors] = @comment.errors.full_messages
            redirect_to meal_path(@comment.meal_id)
        end
    end
    
    
    def destroy
        @comment.destroy
        redirect_to meal_path(@comment.meal_id)
    end

    private
    def find_comment
        @comment = Comment.find(params[:id])
    end

    def comment_params
        params.require(:comment).permit(:content, :meal_id, :user_id)
    end
end
