class AddCourseIdAndCohortIdFromStudents < ActiveRecord::Migration
  def change
    add_column :students, :course_id, :integer
    add_column :students, :cohort_id, :integer
  end
end
