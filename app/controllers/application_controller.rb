# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

# Inclusion of the FaceboxRender module
  include FaceboxRender

class ApplicationController < ActionController::Base
  
# Include all helpers, all the time  	
  helper :all 
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

# Scrub sensitive parameters from your log
  filter_parameter_logging :password, :email
  
end
