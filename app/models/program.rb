#Defines "program" class as inheriting from Active Record Base
class Program < ActiveRecord::Base
	#defines relationship between "program" and "courses" - each program contains potentially many courses, and when you destroy the program all of the associated courses are destroyed as well
	has_many :courses, dependent: :destroy
	#defines relationship between "program" and "students" - each program contains potentially many students, through the courses the students are each associated with
	has_many :students, through: :courses
#wraps up "program" class
end
