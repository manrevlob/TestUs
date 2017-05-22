class RolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_role, only: [:show, :edit, :update, :destroy]

  def index
    @roles = Role.all
  end

  def update
    if @role.update(role_params)
      flash[:success] = t('roleEdited')
      redirect_to roles_path
    else
      flash[:error] = t('roleEditedError')
      redirect_to edit_role_path
    end

  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      flash[:success] = t('roleCreated')
      redirect_to roles_path
    else
      flash[:error] = t('roleCreatedError')
      redirect_to new_role_path
    end
  end

  def destroy
    if @role.destroy
      flash[:success] = t('roleDeleted')
      redirect_to roles_path
    else
      flash[:error] = t('roleDeletedError')
      redirect_to roles_path
    end
  end

  private

  def set_role
    @role = Role.find(params[:id])
  end
  def role_params
    params.require(:role).permit(:name, :description)
  end
end
