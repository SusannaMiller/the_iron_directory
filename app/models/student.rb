#Defines class "student" as inheriting from Active Record base
class Student < ActiveRecord::Base
	#Defines relationship between "student" and "jobs" - each student has (potentially) mutiple jobs, which are dependent on the student, and are destroyed if it is
	has_many :jobs, dependent: :destroy
	#student also takes on the nested attributes associated with each of the jobs under it - must do this because the jobs model is nested under students in the form we made
	accepts_nested_attributes_for :jobs
	#defines relationship between contacts and students. Each student has multiple contacts that are dependant on it and are destroyed if it is
	has_many :contacts, dependent: :destroy
	#student also takes on/allows the attributes of the contacts associated with it - must do this because the contacts model is nested under students in the form we made
	accepts_nested_attributes_for :contacts
	#Defines relationship between student and cohort - each student belongs to one cohort
	belongs_to :cohort
	#Defines relationship between student and course - each student belongs to one course
	belongs_to :course
	#defines feature of student class: it has an attached photo, which as 2 possible styles (sizes defined), and a default location to go to if there isn't one.
	#use "has_attached_file" because we used Paperclip gem to attach the file
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "missing.png"
		#defines qualities of the attached files - that it's a photo, and is an image file
		validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
#wraps up student class
end
