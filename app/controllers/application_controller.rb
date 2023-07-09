class ApplicationController < ActionController::Base
  #before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_search
  before_action :authenticate_admin!, if: :admin_url

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def set_search
    @search = Recipe.ransack(params[:q])
    @result = params[:q]&.values&.reject(&:blank?)
    @check = params[:q]
  end

  def admin_url
    request.fullpath.include?("/admin")
  end
end