class ApplicationController < ActionController::Base
  before_action :set_locale
  helper_method :current_user, :set_user, :authenticated?, :is_this_user?
  def set_locale
    I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def admin?
    current_user.role == 1
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authenticated?
    redirect_to root_url unless current_user || @user
  end

  def is_this_user?
    redirect_to root_url if current_user.id != @user.id
  end
end
