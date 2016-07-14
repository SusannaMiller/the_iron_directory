#Defines the application controler, which inherits from the action controller (active record base)
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #???
  protect_from_forgery with: :exception
#closes this action
end
