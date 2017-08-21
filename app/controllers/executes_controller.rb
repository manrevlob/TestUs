class ExecutesController < ApplicationController
  before_action :param_plan_case, only: [:edit]

  # GET /executes
  def index
    @case_plans = CasePlan.where('user_id' => current_user.id)
  end

  # GET /executes/1
  def show
  end

  # GET /executes/new
  def new
    @execute = Execute.new
  end

  # GET /executes/1/edit
  def edit
    @steps = Step.where('case_id' => @case.id)
  end

  # POST /executes
  # POST /executes.json
  def create

  end

  # PATCH/PUT /executes/1
  def update

  end

  # DELETE /executes/1
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_execute
      @execute = Execute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def execute_params
      params.require(:execute).permit(:summary, :date, :result, :duration, :status)
    end

    def param_plan_case
      @plan = Plan.find(params[:id])
      @case = Case.find(params[:case_id])
    end
end
