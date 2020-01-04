class SessionsController < ApplicationController

  def create
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      user.role == 1 ? redirect_to(admin_root_path, notice: 'Is Admin') : redirect_to(user , notice: 'Not Admin')
    else
      flash.now[:alert] = I18n.t 'email_or_password_wrong'
      render 'users/login_register'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
