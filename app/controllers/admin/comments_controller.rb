class Admin::CommentsController < ApplicationController
  def destroy
    @comment = Comment.find(params[:id])
    comment = @comment.recipe_id
    @comment.destroy
    redirect_to admin_recipe_path(comment)
  end
end
