class RemoveProgramIdFromPrograms < ActiveRecord::Migration
  def change
    remove_column :programs, :program_id, :integer
  end
end
