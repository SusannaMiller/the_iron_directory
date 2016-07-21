#The model "Cohort" inherits from the ActiveRecord Base - includes info like methods for .find, .all, etc
class Cohort < ActiveRecord::Base
	#Each cohort contains (has a relationship to) mutiple students
	has_many :students
#wraps up the cohort class relationships definition
end
