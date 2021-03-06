class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      session[:current_user_name] = user.first_name

      if user.role == "owner"
        redirect_to "/sessions/owner"
      else
        Order.create(date: Date.today, user_id: user.id, sess_id: 1, status: "New")
        redirect_to "/sessions/customer"
      end
    else
      flash[:error] = "Your login attempt was invalid! Please enter valid user ID, Password!!"
      redirect_to new_sessions_path
    end
  end

  def destroy
    session[:current_user_id] = nil
    session[:current_user_name] = nil
    current_user = nil
    session.destroy
    redirect_to "/"
  end
end
