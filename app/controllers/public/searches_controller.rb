class Public::SearchesController < ApplicationController
  def index
    if  params["q"]["title_or_tags_name_cont"] == ""
      @searches = []
    else
      @searches = @search.result(distinct: true).includes(:tags).page(params[:page]).per(5).order("created_at desc")
    end
  end
end
