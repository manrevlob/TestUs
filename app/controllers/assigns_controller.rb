class AssignsController < ApplicationController
  before_action :authenticate_user!

  def index

    @usersAssign = User.joins(:assign).where('assigns.project_id' => session[:project]["id"])
    @usersAll = User.all
    @usersNotAssign ||= []

    @usersAll.each do |userA|
      @bolAssign = false
      @usersAssign.each do |userAss|
        if userA.id.equal?(userAss.id)
          @bolAssign = true
        end
      end
      if @bolAssign == false
        @usersNotAssign << userA
      end
    end

  end

  def edit

    @user = User.find(params[:id])
    @assigns = Assign.where('project_id = ? AND user_id = ?', session[:project]["id"], @user.id)
    if @assigns.any?
        @assigns.each do |ass|
          ass.destroy
        end
    else
      @assign = Assign.new(project_id: session[:project]["id"], user_id: @user.id)
      @assign.save
    end

    redirect_to assigns_path

  end

end
