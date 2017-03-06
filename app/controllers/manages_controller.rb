class ManagesController < ApplicationController

  before_action :authenticate_user!

  def index
    @roles = Role.all
    @zones = Zone.all
    @manages = Manage.all
  end

end
