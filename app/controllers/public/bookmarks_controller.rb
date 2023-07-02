class Public::BookmarksController < ApplicationController
  def index
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.customer_id = current_customer.id
    @bookmark.recipe_id = params[:recipe_id]
    @bookmark.save
    redirect_to recipe_path(@bookmark.recipe_id)
  end

  def destroy
  end

end