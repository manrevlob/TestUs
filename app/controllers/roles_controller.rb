class RolesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_role, only: [:show, :edit, :update, :destroy]
  def index
    @roles = Role.all
  end

  def update
    if @role.update(role_params)
      flash[:success] = "Profile updated"
      redirect_to roles_path
    else
      render 'edit'
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
