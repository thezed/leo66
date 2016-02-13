# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  helper :all
  protect_from_forgery with: :exception
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Нет доступа"
    redirect_to root_url
  end
  
end
