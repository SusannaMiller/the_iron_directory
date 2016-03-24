class Program < ActiveRecord::Base
	has_many :students
	belongs_to :cohort
end
