class PlatformsController < ApplicationController
  before_action :set_platform, only: [:show, :edit, :update, :destroy]

  # GET /platforms
  def index
    @platforms = Platform.all
  end

  # GET /platforms/1
  # GET /platforms/1.json
  def show
  end

  # GET /platforms/new
  def new
    @platform = Platform.new
  end

  # GET /platforms/1/edit
  def edit
  end

  # POST /platforms
  # POST /platforms.json
  def create
    @platform = Platform.new(platform_params)

    respond_to do |format|
      if @platform.save
        redirect_to platform_path
      else
        redirect_to new_platform_path
      end
    end
  end

  # PATCH/PUT /platforms/1
  # PATCH/PUT /platforms/1.json
  def update
    respond_to do |format|
      if @platform.update(platform_params)
        redirect_to platform_path
      else
        redirect_to edit_platform_path
      end
    end
  end

  # DELETE /platforms/1
  # DELETE /platforms/1.json
  def destroy
    if @platform.destroy
      redirect_to platform_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platform
      @platform = Platform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platform_params
      params.require(:platform).permit(:name, :description)
    end
end
