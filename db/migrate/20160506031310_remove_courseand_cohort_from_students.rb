class RemoveCourseandCohortFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :course, :string
    remove_column :students, :cohort, :string
  end
end
