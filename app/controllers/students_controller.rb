class StudentsController < ApplicationController
	def show 
		@student = Student.find(params[:id])
		@jobs = @student.jobs.all
	end
	def index
		@students = Student.all
	end
	def new
		@student = Student.new
		@cats = ["email", "phone", "slack"]
		3.times do
			@student.contacts.build
		end 
	end	
	def create
		@student = Student.create!(student_params)
		redirect_to students_path
	end
	def student_params
		params.require(:student).permit(:first_name, :last_name, :course, :cohort, :id, :photo, contacts_attributes: [:category, :info, :id])
	end
	def destroy
		@student = Student.find(params[:id]).destroy
		redirect_to students_path
	end
	def edit
		@student = Student.find(params[:id])
		@cats = ["email", "phone", "slack"]
		render :new
	end
	def update
		@student = Student.find(params[:id])
		@student.update(student_params)
		redirect_to student_path(@student)
	end
end
