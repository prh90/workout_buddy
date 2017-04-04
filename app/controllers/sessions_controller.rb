class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      log_in(@user)
      redirect_to root_path
    else
      redirect_to '/register'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
