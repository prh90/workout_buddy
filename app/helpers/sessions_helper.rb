module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def authorize
    redirect_to login_path unless current_user
  end
end
