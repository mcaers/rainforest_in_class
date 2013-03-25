class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # flash[:notice]  # everything is ok
      # flash[:alert]   # something happen. the user should know. not quite an error.
      # flash[:error]   # something went wrong.
      flash[:notice] = "Signup was successful."
      redirect_to products_path  #/products
    else
      # still the create action, rendering the new view
      render :action => :new
      # goes to the new action, renders the new view
      # redirect_to new_user_path
    end
  end
end
