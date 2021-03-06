class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Successfully logged in!"
      redirect_to user_path(@user)
    else
      flash[:error] = "Could not create account"
      redirect_to new_user_path
    end
  end

  def show
    @user = current_user
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
