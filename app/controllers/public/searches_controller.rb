class Public::SearchesController < ApplicationController
  def index
    @searches = @search.result(distinct: true).includes(:recipe,:tags).page(params[:page]).order("created_at desc")
  end
  
  
end
