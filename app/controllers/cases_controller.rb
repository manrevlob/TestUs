class CasesController < ApplicationController
  before_action :set_case, only: [:edit, :update, :destroy]
  before_action :param_suite

  # GET /suite/cases
  def index
    @cases = Case.where('suite_id' => @suite.id)
  end

  # GET /suite/cases/new
  def new
    @case = Case.new
  end

  # GET /cases/1/edit
  def edit
  end

  # POST /cases
  def create
    @case = Case.new(case_params)
    @case.suite = @suite

      if @case.save
        flash[:success] = t('caseCreated')
        redirect_to suite_cases_path
      else
        flash[:error] = t('caseCreatedError')
        redirect_to new_suite_case_path
      end
  end

  # PATCH/PUT /cases/1
  def update
    if @case.update(case_params)
      flash[:success] = t('caseEdited')
      redirect_to suite_cases_path
    else
      flash[:error] = t('caseEditedError')
      redirect_to new_suite_case_path
    end
  end

  # DELETE /cases/1
  def destroy
    if @case.destroy
      flash[:success] = t('caseDeleted')
      redirect_to suite_cases_path
    else
      flash[:error] = t('caseDeletedError')
      redirect_to suite_cases_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case
      @case = Case.find(params[:id])
    end

    def param_suite
      @suite = Suite.find(params[:suite_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def case_params
      params.require(:case).permit(:title, :description, :suite_id)
    end
end
