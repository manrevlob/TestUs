class RolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_role, only: [:show, :edit, :update, :destroy]
  def index
    @roles = Role.all
  end

  def update
    if @role.update(role_params)
      flash[:success] = "Role updated"
      redirect_to roles_path
    else
      render 'edit'
    end

  end

  def new
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    if @role.save
      flash[:success] = "Role created"
      redirect_to roles_path
    else
      redirect_to new_role_path
    end
  end

  def destroy
    if @role.destroy
    flash[:success] = "Role deleted"
    redirect_to roles_path
    else
      flash[:error] = "muertee!!"

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
