class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      login(@user)
      redirect_to root_path
    else
      @errors = ["You may have mistyped your email.", "You may have mistyped your password"]
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
