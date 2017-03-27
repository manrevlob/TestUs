class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @users = User.all.order("role_id")
  end

  def new
    @user = User.new
    @roles = Role.all
  end

  def edit
    @roles = Role.all
  end

  def update
    if @user.update(user_params_edit)
      redirect_to users_path
      flash[:success] = t('userSave')
    else
      redirect_to new_user_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
      flash[:success] = t('userSave')
    else
      redirect_to new_user_path
    end
  end

  def destroy

    @assigns = Assign.where(user_id: @user.id)

    if @assigns.any?
      @assigns.each do |assign|
        assign.destroy
      end
    end

    if @user.destroy
      redirect_to users_path
      flash[:success] = t('userDelete')
    else
      redirect_to users_path
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :surname, :email, :active, :username, :password, :role_id)
  end

  def user_params_edit
    params.require(:user).permit(:name, :surname, :email, :active, :role_id)
  end

end
