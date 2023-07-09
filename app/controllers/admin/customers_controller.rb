class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.order(created_at: :asc).page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
    @recipes = Recipe.where(customer_id: @customer).page(params[:page]).per(5)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
  end
end
