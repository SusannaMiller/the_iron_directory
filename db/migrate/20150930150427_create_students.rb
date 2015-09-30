class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :course
      t.string :cohort
      t.timestamps null: false
    end
  end
end
