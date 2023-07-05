class Public::BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.where(customer_id: current_customer.id).page(params[:page]).per(8)
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.customer_id = current_customer.id
    @bookmark.recipe_id = params[:recipe_id]
    @bookmark.save
    redirect_to recipe_path(@bookmark.recipe_id)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path
  end

end