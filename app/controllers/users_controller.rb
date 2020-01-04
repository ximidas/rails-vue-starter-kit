class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]
  before_action :authenticated?, except: %i[enter create]
  before_action :is_this_user?, except: %i[enter create]
  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  def enter


    @user = User.new
    @user.save

    if current_user
      redirect_to(current_user)
    else
      render('users/login_register')


    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to @user, notice: I18n.t('user_registered')
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user.update_attributes(user_params)
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to admin_root_path, notice: 'User was successfully destroyed.' }
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :role)
  end


end