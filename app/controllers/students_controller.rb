class StudentsController < ApplicationController
	def show 
		@student = Student.find(params[:id])
	end
	def index
		@students = Student.all
	end
	def new
		@student = Student.new
	end	
	def create
		@student = Student.create!(student_params)
		redirect_to students_path
	end
	def student_params
		params.require(:student).permit(:first_name, :last_name, :course, :cohort, :id, :photo)
	end
	def destroy
		@student = Student.find(params[:id]).destroy
		redirect_to students_path
	end
end
