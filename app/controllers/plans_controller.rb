class PlansController < ApplicationController
  before_action :set_plan, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :param_build

  # GET /plans
  def index
    @plans = Plan.where('build_id' => @build.id)
  end

  # GET /plans/new
  def new
    @plan = Plan.new
  end

  # GET /plans/1/edit
  def edit
  end

  # POST /plans
  def create
    @plan = Plan.new(plan_params)
    @plan.build = @build

    if @plan.save
      flash[:success] = t('planCreated')
      redirect_to build_plans_path
    else
      flash[:error] = t('planCreatedError')
      redirect_to new_build_plan_path
    end
  end

  # PATCH/PUT /plans/1
  def update
    if @plan.update(plan_params)
      flash[:success] = t('planEdited')
      redirect_to build_plans_path
    else
      flash[:error] = t('planEditedError')
      redirect_to new_build_plan_path
    end
  end

  # DELETE /plans/1
  def destroy
    if @plan.destroy
      flash[:success] = t('planDeleted')
      redirect_to build_plans_path
    else
      flash[:error] = t('planDeletedError')
      redirect_to build_plans_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan
      @plan = Plan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_params
      params.require(:plan).permit(:active, :public, :name, :description)
    end

  def param_build
    @build = Build.find(params[:build_id])
  end

end
