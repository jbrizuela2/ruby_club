class UsersController < ApplicationController
  def edit
    render :edit_form
  end

  def update
    if current_user.update(user_params)
      flash[:notice] = "User updated :D"
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong D:"
      render :edit_form
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :photo, :description)
  end
end
