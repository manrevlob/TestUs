class CasePlanController < ApplicationController
  before_action :set_plan, only: [:index, :create]
  before_action :authenticate_user!
  before_action :param_case_plan, only: [:create]

  def index
    @case_plan = CasePlan.new
    @cases = Case.all
    @users = User.joins(:assign).where('assigns.project_id' => session[:project]["id"])

  end

  def edit

  end

  def create

    @userA = User.find(params[:case_plan]["user_id"])
    @casesA = params[:cases]

    @casesA.each do |ca|
      @case_plan_aux = CasePlan.new
      @caseA = Case.find(ca)
      @case_plan_aux.case = @caseA
      @case_plan_aux.user = @userA
      @case_plan_aux.plan = @plan
      @case_plan_aux.isExecute = false

      if @case_plan_aux.save
        flash[:success] = 'Plan asigned'
      end
    end
    redirect_to build_plans_path
  end

  private

    def set_plan
      @plan = Plan.find(params[:plan_id])
      @build = Build.find(params[:build_id])
    end

    def param_case_plan
      @plan = Plan.find(params[:plan_id])
      @build = Build.find(params[:build_id])
    end

    def casePlan_params
      params.require(:case_plan).permit(:user_id)
    end

end
