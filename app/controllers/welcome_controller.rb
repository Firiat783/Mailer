class WelcomeController < ApplicationController
  def index

  end

  def edit_user
    @user = current_user
  end

  def update_user

    @user = current_user

    if @user.update(user_params)
        redirect_to root_path, notice:  ' Профиль успешно обновлен.'
    else
      render action: 'edit_user'
    end
  end


  def user_params
    params.require(:user).permit(:gender, :email, :avatar)
  end
end
