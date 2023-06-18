class Public::RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.customer_id = current_customer.id
    @recipe.save
    
    
  end

  def show
  end

  def edit
  end

  def update
  end
  
  private

  def recipe_params
    params.require(:recipe).permit(:title, :quantity, :image )
  end
end
