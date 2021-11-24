class CustomerController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    render "customer/new"
  end

  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      role: "customer",
    )
    if user.save
      session[:current_user_id] = user.id
      redirect_to "customer/index"
    else
      flash[:error] = user.errors.full_messages.join(" ,  ")
      redirect_to new_customer_path
    end
  end

  def show
  end

  def login
    email = params[:email]
    password = params[:password]
    user = User.find_by(email: email, password: password)
    render plain: user.present?
  end
end