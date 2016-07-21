#defines the class "ContactsController" as inheriting from the ApplicationController
class ContactsController < ApplicationController
	#Defines the action "new" for contracts controller
	def new
		#for each instance of student, find that particular instance using the student id
		@student = Student.find (params[:student_id])
		#"Do the block below x2"
		2.times do
			#build the contact associated with that student instance (twice, RE above, because we have 2 pieces of contact info/student)
			@student.contacts.build
		#end of this action
		end
	#complete the new contact action
	end
	#defines the method "contact_params" for contacts controller - b/c in controller can be accessed by any actions we put in here. Not from other files, like model, etc
	def contact_params
		#lists the parameters that each instance of contact must have
		params.require(:contacts).permit(:id, :student_id, :category, :info)
	#ends this action
	end
#wraps up the info about the class ContactsController
end
