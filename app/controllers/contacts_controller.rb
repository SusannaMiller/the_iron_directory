#defines the class "ContactsController" as inheriting from the ApplicationController
class ContactsController < ApplicationController
	#Defines the class action "new"
	def new
		#for each instance of student, find that particular instance using the student ide
		@student = Student.find (params[:student_id])
		#????
		2.times do 
			#build the contact associated with that student instance
			@student.contacts.build
		#complete whatever this is
		end
	#complete the new contact action
	end
	#starts a class action (is this what you call that? help) that defines the parameters for contact
	def contact_params
		#lists the parameters that each instance of contact must have
		params.require(:contacts).permit(:id, :student_id, :category, :info)
	#ends this action
	end
#wraps up the info about the class ContactsController
end
