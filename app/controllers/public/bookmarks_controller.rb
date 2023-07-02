class Public::BookmarksController < ApplicationController
  def index
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.customer_id = current_customer.id
    @bookmark.recipe_id = @recipe
    @bookmark.save
  end

  def destroy
  end
end
