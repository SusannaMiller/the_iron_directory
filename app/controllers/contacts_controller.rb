class ContactsController < ApplicationController
	def new
		@student = Student.find (params[:student_id])
		@contacts = Array.new(2) { @student.contacts.new }
		@contact = @student.contacts.new
	end
	def create
		 
	end	
	def contact_params
		params.require(:contact).permit(:category, :info, :student_id, :id)
	end
end
