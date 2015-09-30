class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :category
      t.string :info
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
