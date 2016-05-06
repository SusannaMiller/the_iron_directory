class AddProgramIdToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :program_id, :integer
  end
end
