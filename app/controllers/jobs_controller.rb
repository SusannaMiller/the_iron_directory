class JobsController < ApplicationController
	def new
		@student = Student.find(params[:student_id])
		@job = @student.jobs.new
	end	
end