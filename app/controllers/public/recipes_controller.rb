class Public::RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end
  
  private

  def recipe_params
    params.require(:recipe).permit(:customer_id, :title, )
  end
end
