class StepsController < ApplicationController
  before_action :set_step, only: [:edit, :update, :destroy]
  before_action :param_suite_case

  # GET /steps
  def index
    @steps = Step.all
    @step = Step.new
  end

  # GET /steps/1
  def show
  end

  # GET /steps/new
  def new
    @step = Step.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  def create
    @step = Step.new(step_params)

    if @step.save
      flash[:success] = t('stepCreated')
      redirect_to suite_case_steps_path
    else
      flash[:error] = t('stepCreatedError')
      redirect_to suite_case_steps_path
    end

  end

  # PATCH/PUT /steps/1
  def update

    if @step.update(step_params)
      flash[:success] = t('stepEdited')
      redirect_to suite_case_steps_path
    else
      flash[:error] = t('stepEditedError')
      redirect_to suite_case_steps_path
    end

  end

  # DELETE /steps/1
  def destroy

    if @step.destroy
      flash[:success] = t('stepDeleted')
      redirect_to suite_case_steps_path
    else
      flash[:error] = t('stepDeletedError')
      redirect_to suite_case_steps_path
    end

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_step
    @step = Step.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def step_params
    params.require(:step).permit(:action, :expectedResult)
  end

  def param_suite_case
    # suite_id = params[:suite_id]
    # case_id =  params[:case_id]
    @suite = Suite.find(params[:suite_id])
    @case = Case.find(params[:case_id])
  end
end
