class ManagesController < ApplicationController

  before_action :authenticate_user!

  def index
    @roles = Role.all
    @zones = Zone.all
    @manages = Manage.all
  end

  def update
    @manages = Product.find(params[:product_ids])
    @manages.each do |manage|
      manage.update_attributes!(params[:manage].reject { |k,v| v.blank? })
    end
    flash[:notice] = "Updated products!"
    redirect_to products_path
  end

end
