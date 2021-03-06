# Inherits from ApplicationController class. This defines what this controller is: the Students Controller
class StudentsController < ApplicationController
	#This defines what the "show" action does for the students controller
	def show
		#for each student, find that student using their id, in the student params list
		@student = Student.find(params[:id])
		#find all the jobs associated with each student and display
		@jobs = @student.jobs.all
		# find all the contacts assocaited with each student and display - you can call them using @contacts elsewhere in app
		@contacts = @student.contacts.all
	#wraps up the "show" action
	end
	#defines the index action for students controller
	def index
		#show all the students
		@students = Student.all
	#wraps up the "index" action
	end
	#defines the "new" action for students controller
	def new
		#on the students table (@ so that view can see it), make a temp row (create will save below) for the new student using class action "new"
		@student = Student.new
		#defines what the categories are for contacts
		@cats = ["email", "phone", "slack"]
		#do the actions below three times (because there are 3 different contact categories)
		3.times do
			#build a contact attached to the student (x3 b/c above)
			@student.contacts.build
		#wrap up "do" action
		end
	#wrap up "new" action
	end
	#defines "create" action for students controller
	def create
		#for each student, create student params
		@student = Student.create!(student_params)
		#once created, go back to students path
		redirect_to students_path
	#wrap up "create" action
	end
	#defines parameters for students controller
	def student_params
		#students requires parameters, and you can have 5 - including course attributes (name of course), and cohort attributes
		params.require(:student).permit(:first_name, :last_name, :id, :photo, courses_attributes: [:name], cohorts_attributes: [:season, :year], contacts_attributes: [:category, :info, :id])
	#wraps up student parameters aciton
	end
	#defines "destroy" for students controller
	def destroy
		#for each student, find that student by using the student id, then destroy
		@student = Student.find(params[:id]).destroy
		#go back to the student path
		redirect_to students_path
	#wraps up student "destroy" action
	end
	#defines "edit" action for students controller
	def edit
		#for each student, find that student using the student id
		@student = Student.find(params[:id])
		#each category is an array with 3 items - with @ so that view controller can find it, and displays those labels (on edit form)
		@cats = ["email", "phone", "slack"]
		#go to the new student page in order to edit
		render :new
	#wraps up "edit" action
	end
	#defines the "update" action for students controller
	def update
		#for each student, find the student using student id
		@student = Student.find(params[:id])
		#update the student using the student params
		@student.update(student_params)
		#go back to the student path when done
		redirect_to student_path(@student)
	#wraps up "update" action
	end
#wraps up students controller
end
