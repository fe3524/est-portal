class UsersController < ApplicationController
  def show
    @user = current_user.user_name
    @mypages = current_user.mypages
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to mypages_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name, :email)
  end
end