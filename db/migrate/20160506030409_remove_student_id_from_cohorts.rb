class RemoveStudentIdFromCohorts < ActiveRecord::Migration
  def change
    remove_column :cohorts, :student_id, :integer
  end
end
