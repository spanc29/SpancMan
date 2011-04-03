class ApplicationController < ActionController::Base
  helper :all
  include ControllerAuthentication
  protect_from_forgery


end
