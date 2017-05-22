class SuitesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_suite, only: [:show, :edit, :update, :destroy]

  # GET /suites
  def index
    @suites = Suite.all
  end

  # GET /suites/new
  def new
    @suite = Suite.new
  end

  # GET /suites/1/edit
  def edit
  end

  # POST /suites
  def create
    @suite = Suite.new(suite_params)

      if @suite.save
        flash[:success] = t('suiteCreated')
        redirect_to suites_path
      else
        flash[:error] = t('suiteCreatedError')
        redirect_to new_suite_path
      end
  end

  # PATCH/PUT /suites/1
  def update
      if @suite.update(suite_params)
        flash[:success] = t('suiteEdited')
        redirect_to suites_path
      else
        flash[:error] = t('suiteEditedError')
        redirect_to new_suite_path
      end
  end

  # DELETE /suites/1
  def destroy
    if @suite.destroy
      flash[:success] = t('suiteDeleted')
      redirect_to suites_path
    else
      flash[:error] = t('suiteDeletedError')
      redirect_to suites_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suite
      @suite = Suite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suite_params
      params.require(:suite).permit(:name, :description)
    end
end
