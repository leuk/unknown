# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.


class ApplicationController < ActionController::Base
  
# Include all helpers, all the time  	
  helper :all 
  helper_method :current_user_session , :current_user
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

# Scrub sensitive parameters from  logging
  filter_parameter_logging :password, :email, :password_confirmation



####################### Private Area ###################################################
  private
    def current_user_session
      return @current_user_session if defined?(@current_user_session)
      @current_user_session = UserSession.find
    end
    
    def current_user
      return @current_user if defined?(@current_user)
      @current_user = current_user_session && current_user_session.record
    end  
end
