class Public::CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.customer_id = current_customer.id
    @comment.save
    redirect_to recipe_path(@comment.recipe_id)
  end


  private

  def comment_params
    params.require(:comment).permit(:recipe_id, :content)
  end
end
