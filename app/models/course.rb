#Defines the model for the "Course" class as inherting from Active Record base
class Course < ActiveRecord::Base
	#Defines relationship between course and program - each course is tied to a single program
	belongs_to :program
	#Defines relationship between course and students - each course contains multiple students
	has_many :students
#wraps up class model
end
