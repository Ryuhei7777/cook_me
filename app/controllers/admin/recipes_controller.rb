class Admin::RecipesController < ApplicationController
  def show
     @recipe = Recipe.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(recipe_id: @recipe).page(params[:page]).per(5)
  end
  
end
