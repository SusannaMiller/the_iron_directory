class AddCohortIdToPrograms < ActiveRecord::Migration
  def change
  	add_column :programs, :cohort_id, :integer
  end
end
