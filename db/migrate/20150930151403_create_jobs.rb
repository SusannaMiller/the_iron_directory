class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company
      t.string :title
      t.string :start_month
      t.integer :start_year
      t.string :end_month
      t.integer :end_year
      t.string :responsibilities

      t.timestamps null: false
    end
  end
end
