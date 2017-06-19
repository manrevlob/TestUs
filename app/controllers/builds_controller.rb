class BuildsController < ApplicationController
  before_action :set_build, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :project_param, only: [:create]

  # GET /builds
  def index
    @builds = Build.where('project_id' => session[:project]["id"])
  end

  # GET /builds/new
  def new
    @build = Build.new
  end

  # GET /builds/1/edit
  def edit
  end

  # POST /builds
  def create
    @build = Build.new(build_params)
    @build.project = @project

    if @build.save
      flash[:success] = t('buildCreated')
      redirect_to builds_path
    else
      flash[:error] = t('buildCreatedError')
      redirect_to new_build_path
    end
  end

  # PATCH/PUT /builds/1
  def update
    if @build.update(build_params)
      flash[:success] = t('buildEdited')
      redirect_to builds_path
    else
      flash[:error] = t('buildEditedError')
      redirect_to new_build_path
    end
  end

  # DELETE /builds/1
  def destroy
    if @build.destroy
      flash[:success] = t('buildDeleted')
      redirect_to builds_path
    else
      flash[:error] = t('buildDeletedError')
      redirect_to builds_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_build
      @build = Build.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def build_params
      params.require(:build).permit(:active, :isOpen, :name, :description, :releaseDate)
    end

    def project_param
      project_id = session[:project]["id"]
      @project = Project.find(project_id)
    end

end
