#Defines the class "JobsController" as inheriting from the application controller
class JobsController < ApplicationController
	#defines what the "new" action will do for the jobs controller
	def new
		#for each instance of student, find the specific student using the student id
		@student = Student.find(params[:student_id])
		#create a new job instance of a job model which is related to a specific student using a has many relationship (using id from previous line) then using .new as the action
		@job = @student.jobs.new
	#wraps up the "new" job action
	end	
	#defines the "create" action for the jobs controller
	def create
		#for each instance of student, find the specific student using the student id
		@student = Student.find(params[:student_id])
		#each job is then equal to that student, linked to the job, followed by create action (this actually saves the instance that was made with "new" above). Requires the parameter info to be there too
		@job = @student.jobs.create!(job_params)
		#the @ allows the view file to access the job params (and they're the same as the job_params already defined in the controller)
		@job_params = job_params
		#then go back to the main student show page, NOT the jobs page where you were adding a new job
		redirect_to student_path(@student)
	#wraps up the "create" job action
	end
	#defines the "edit" action for the jobs controller
	def edit
		#for each instance of student, find the specific student using the student id
		@student = Student.find(params[:student_id])
		#each job is then equal to that student, linked to that job, which finds the specific job based on the job's id (part of it's params)
		@job = @student.jobs.find(params[:id])
		#display the new job (or add job) page instead of "edit" page with the new info from above
		render :new
	#wraps up the "edit" action for the jobs controller
	end
	#defines the "update" action for the jobs controller
	def update
		#for each instance of student, find the specific student using the student id
		@student = Student.find(params[:student_id])
		#the specific job is found by finding the student above, then the job based on it's id (part of params)
		@job = @student.jobs.find(params[:id])
		#then update that job and it's params
		@job.update(job_params)
		#and go back to the student show page - using the "show" action, not the info we just added
		redirect_to student_path(@student)
	#wraps up the "update" action for the jobs controller	
	end
	#defines the destroy action for the jobs controller
	def destroy
		#for each instance of student, find the specific student using the student id
		@student = Student.find(params[:student_id])
		#use the student id to find the jobs associated (by id) and destroy them
		@job = @student.jobs.find(params[:id]).destroy
		#go back to the student page 
		redirect_to student_path(@student)
	#wraps up the "destroy" action for the jobs controller
	end
	#defines the method "job_params" for jobs controller - b/c in controller can be accessed by any actions we put in here. Not from other files, like model, etc
	def job_params
		#you have to have a job, and all the others are optional
		params.require(:job).permit(:company, :title, :start_month, :start_year, :end_month, :end_year, :responsibilities, :student_id, :id)
	#wraps up the "params" for jobs class
	end
#wraps up the jobs class controller
end