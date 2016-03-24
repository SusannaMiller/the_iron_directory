class ContactsController < ApplicationController
	def new
		@student = Student.find (params[:student_id])
		2.times do 
			@student.contacts.build
		end
	end
	def create
		 
	end	
	def contact_params
		params.require(:contacts).permit(:id, :student_id, :category, :info)
	end
end
