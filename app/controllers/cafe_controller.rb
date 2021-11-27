class CafeController < ApplicationController
  def index
    if current_user
    else
    end
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
      redirect_to "/"
    else
      flash[:error] = user.errors.full_messages.join(" ,  ")
      redirect_to "/cafe/new"
    end
  end
end
