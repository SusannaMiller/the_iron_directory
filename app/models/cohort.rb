class Cohort < ActiveRecord::Base
	has_many :programs
	has_many :students, through: :programs
end
