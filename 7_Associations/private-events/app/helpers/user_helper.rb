module UserHelper
  def log_in(user)
    session[:name] = user.name
  end
  
  def current_user
    @current_user #||= User.find_by(name: session[:user_id])
  end
end
