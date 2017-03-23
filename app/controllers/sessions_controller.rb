class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      log_in(user)
      flash[:notice] = "Hello #{user.username}!"
      redirect_to root_path
    else
      flash[:error] = "Username or password was incorrect"
      render :new
    end
  end

  def destroy
    if user = User.find_by_id(session[:user_id])
      log_out
      redirect_to root_path
    else
      flash[:error] = "Failed to log out"
      redirect_to root_path
    end
  end
end
