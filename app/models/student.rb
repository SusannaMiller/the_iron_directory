class Student < ActiveRecord::Base
	has_many :jobs, dependent: :destroy
	accepts_nested_attributes_for :jobs
	has_many :contacts, dependent: :destroy
	accepts_nested_attributes_for :contacts
	belongs_to :cohort
	belongs_to :course
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "missing.png"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
  	belongs_to :program
end
