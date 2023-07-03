class Public::HomesController < ApplicationController
  def top
     @recipe = Recipe.all.order(created_at: :desc).limit(4)
  end
end
