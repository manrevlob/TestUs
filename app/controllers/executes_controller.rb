class ExecutesController < ApplicationController
  before_action :param_plan_case, only: [:edit]

  # GET /executes
  def index
    @case_plans = CasePlan.where(:user => current_user, :isExecute => false)
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
    @steps = Step.where(:case => @case)
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

  def save_execution
    @execute_case = ExecuteCase.new
    @case = Case.find(params[:case]["id"])

    @execute_case.title = @case.title
    @execute_case.description = @case.description
    @execute_case.user = current_user


    if @execute_case.save
      Step.where('case_id' => @case.id).find_each do |s|
        @execute_step = ExecuteStep.new
        @execute_step.action = s.action
        @execute_step.expectedResult = s.expectedResult
        @execute_step.status = params["steps"][s.id.to_s]
        @execute_step.execute_case = @execute_case
        unless @execute_step.save
          flash[:error] = "Error saving step's result"
        end
      end

    else
      flash[:error] = 'Error saving execution'
    end

    @case_plan = CasePlan.where(:user => current_user, :isExecute => false, :case => @case).first
    unless @case_plan.nil?
      @case_plan.isExecute = true
      if @case_plan.save
        flash[:success] = 'Execution saved'
        redirect_to executes_path
      end
    else
      flash[:error] = 'Error saving plan executed'
    end

  end

  def index_history
    @cases = ExecuteCase.all
  end

  def show_index_history
    @case = ExecuteCase.find(params[:id])
    @steps = ExecuteStep.where(:execute_case => @case)
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
