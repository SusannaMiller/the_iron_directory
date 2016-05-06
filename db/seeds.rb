#t.string   "first_name"
# t.string   "course"
# t.string   "cohort"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.string   "last_name"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Program.destroy_all
@programs = ["Back-End Engineering", "Data Science", "Design", "Front-End Engineering", "Mobile Engineering"].map do |name|
	Program.create!(name: name)	
end