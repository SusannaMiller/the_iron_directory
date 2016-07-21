#Defines "Job" class as inheriting from Active Record Base
class Job < ActiveRecord::Base
	#defines relationship between "job" and "student" each job is associated with a single student
	belongs_to :student
#wraps up "job" class model description
end
