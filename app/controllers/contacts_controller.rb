class ContactsController < ApplicationController
	def new
		@student = Student.find (params[:student_id])
		@contact = @student.contacts.new
	end
	def create
		@student = Student.find (params[:student_id])
		@contact = @student.contacts.create!(contact_params)
		@contact_params = contact_params
		#redirect_to student_path(@student) 
	end	
	def contact_params
		params.require(:contact).permit(:category, :info, :student_id, :id)
	end
end
