class CasePlanController < ApplicationController
  before_action :set_plan, only: [:index]
  before_action :authenticate_user!
  before_action :param_case_plan, only: [:edit]

  def index
    @case_plan = CasePlan.new
    # @casesAssign = Case.joins(:case_plans).where('case_plans.plan_id' =>  @plan.id)
    @cases = Case.all
    @users = User.joins(:assign).where('assigns.project_id' => session[:project]["id"])

  end

  def edit

  end

  private

    def set_plan
      @plan = Plan.find(params[:plan_id])
    end

    def param_case_plan
      @plan = Plan.find(params[:plan_id])
      @build = Build.find(params[:build_id])
    end

end
