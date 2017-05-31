class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_session, :set_locale


  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    {locale: I18n.locale}.merge options
  end

  def set_current_session
    unless current_user.nil?
      @projects_can_select ||= Project.joins(:assign).where('assigns.user_id' => current_user.id)
      unless @projects_can_select.nil?
        if session[:project].nil?
          @current_project = @projects_can_select.first
          session[:project] = @current_project
        else
          @current_project = Project.find(session[:project]["id"])
        end
      end

      # current_user.manages ||= Manage.where(:role_id => current_user.role.id)
      # if session[:permission].nil?
      #   session[:permission] = Manage.where(:role_id =>  current_user.role.id)
      # end
    end
  end

  def set_current_project
    session[:project] = params[:current_project]
    redirect_back(fallback_location: request.referer)
  end

end
