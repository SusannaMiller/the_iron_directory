class RemoveCourseAndCohortIdFromProgram < ActiveRecord::Migration
  def change
    remove_column :programs, :course, :string
    remove_column :programs, :cohort_id, :integer
  end
end
