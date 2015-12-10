class JobsController < ApplicationController
	def new
		@student = Student.find(params[:student_id])
		@job = @student.jobs.new
	end	
	def create
		@student = Student.find(params[:student_id])
		@job = @student.jobs.create!(job_params)
		@job_params = job_params
		#redirect_to student_path(@student)
	end
	def job_params
		params.require(:job).permit(:company, :title, :start_month, :start_year, :end_month, :end_year, :responsibilities, :student_id)
	end
end