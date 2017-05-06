class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /projects
  def index
    @projects = Project.all
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  def create
    @project = Project.new(project_params)

      if @project.save
        flash[:success] = t('projectCreated')
        redirect_to projects_path
      else
        flash[:error] = t('projectCreatedError')
        redirect_to new_project_path
      end
  end

  # PATCH/PUT /projects/1
  def update

      if @project.update(project_params)
        flash[:success] = t('projectEdited')
        redirect_to projects_path
      else
        flash[:error] = t('projectEditedError')
        redirect_to edit_project_path
      end
  end

  # DELETE /projects/1
  def destroy
    if @project.destroy
      flash[:success] = t('projectDeleted')
      redirect_to projects_path
    else
      flash[:error] = t('projectDeletedError')
      redirect_to projects_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :active, :public)
    end

end
