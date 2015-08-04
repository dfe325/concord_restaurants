class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    @user.admin = true

    if @user.save
      flash[:notice] = "User is now an Admin"
    end

    redirect_to users_path
  end

  def destroy
    bad_user = User.find(params[:id])
    if bad_user.destroy
      flash[:notice] = "User Deleted"
    end

    redirect_to users_path
  end
end
