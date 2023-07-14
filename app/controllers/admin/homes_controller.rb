class Admin::HomesController < ApplicationController
  def top
    @recipes = Recipe.all.order(created_at: :desc).page(params[:page]).per(8)
  end
end
