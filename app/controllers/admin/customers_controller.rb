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
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_customer_path(@customer)
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :is_deleted)
  end

end
