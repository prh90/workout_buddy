module ApplicationHelper
  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def authorize
    redirect_to login_path unless current_user
  end
end
