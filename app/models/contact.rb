#Defines the "Contact" class as inheriting from the ActiveRecord base
class Contact < ActiveRecord::Base
	#defines the relationship between the contact class and students - each contact belongs to a single student
	belongs_to :student
#wraps up this class model
end
