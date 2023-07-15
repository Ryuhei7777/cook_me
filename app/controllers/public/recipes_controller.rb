class Public::RecipesController < ApplicationController
  def index
    @recipe = Recipe.all.order(created_at: :desc).page(params[:page]).per(8)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.customer_id = current_customer.id
    @recipe.save
    redirect_to recipes_path
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(recipe_id: @recipe).page(params[:page]).per(5)

  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    redirect_to recipe_path(recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :quantity, :image,
    materials_attributes: [:id, :recipe_id, :name, :quantity, :_destroy],
    seasonings_attributes: [:id, :recipe_id, :name, :quantity, :_destroy],
    steps_attributes: [:id, :recipe_id, :content, :_destroy],
    tags_attributes: [:id, :recipe_id, :name, :_destroy])
  end

end
