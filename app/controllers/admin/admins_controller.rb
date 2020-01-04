class Admin::AdminsController < ApplicationController

  layout 'admin/application'
  helper_method :admin?

  def index
    @users = User.all

    if admin?
      render 'admin/index'
    else
      redirect_to '/'
    end

  end


  private

  def admin?
    current_user && current_user.role == 1
  end

end