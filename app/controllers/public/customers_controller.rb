class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(current_customer.id)
    @recipe = Recipe.where(customer_id: @customer).order(created_at: :desc).page(params[:page]).per(4)
  end

  def edit
    @customer = Customer.find(current_customer.id)
  end

  def update
    @customer = Customer.find(current_customer.id)
    @customer.update(customer_params)
    redirect_to customers_path
  end

  def withdraw_check
  end

  def withdraw
    @customer = Customer.find(current_customer.id)
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :email, :is_deleted)
  end

end
