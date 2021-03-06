class ApplicationController < ActionController::Base
  def ensure_user_logged_in
    unless current_user
      # halt that request cycle
      redirect_to "/"
    end
  end

  def current_user
    #memorization
    return @current_user if @current_user

    @current_user_id = session[:current_user_id]
    if @current_user
      @current_user = User.find(current_user_id)
    else
      nil
    end
  end
end
