#Defines the application controler, which inherits from the action controller (active record base)
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #This is where the individual keys etc for forms come from - that's why we have .require/.permit, etc. Otherwise people can forge things on your form.
  protect_from_forgery with: :exception
#closes this class
end
