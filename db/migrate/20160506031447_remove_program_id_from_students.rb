class RemoveProgramIdFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :program_id, :integer
  end
end
