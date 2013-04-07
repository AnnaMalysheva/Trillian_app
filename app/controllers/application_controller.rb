class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter do |controller|
    Rails.logger.debug("Requested format=#{controller.request.format}")
    
    if controller.request.format.json?
      # The following are API related filters
     # validate_HMAC
    end
  end
  
  # User session validation
  
  def validate_session
    render :text => "Invalid session", :status => 401 if !current_user  
  end
  
  def current_user
    return nil unless session[:user_id]
    @current_user ||= User.find_by_user_id(session[:user_id])
  end
end
