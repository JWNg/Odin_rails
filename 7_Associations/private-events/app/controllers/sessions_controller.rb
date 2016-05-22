class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user
      #login user
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to user
    else
      #error message for user cannot be found
      flash.now[:danger] = "user name cannot be found!"
      render new_user_path
    end    
  end

  def delete
    log_out if logged_in?
    redirect_to root_url
  end
end
