class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # equivalent to:
    # user = User.where(:email => params[:email]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_path, :notice => "Logged in!"
    else
      flash.now[:alert] = "Invalid email or password"
    end
  end

  def destroy
  end
end
