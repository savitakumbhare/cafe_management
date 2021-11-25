class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      if user.role == "owner"
        redirect_to "/menu"
      else
        redirect_to "/customer"
      end
    else
      flash[:error] = "Your login attempt was invalid! Please enter valid user ID, Password!!"
      redirect_to new_sessions_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    current_user = nil
    redirect_to "/"
  end
end
