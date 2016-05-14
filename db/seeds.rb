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
Course.destroy_all
@programs = ["Back-End Engineering", "Data Science", "Design", "Front-End Engineering", "Mobile Engineering"].map do |name|
	Program.create!(name: name)	
end
back_end = Program.find_by(name: "Back-End Engineering")
["Python and Django", "C# and .NET", "Java and Clojure", "Ruby on Rails"].map do |name|
	back_end.courses.create!(name: name)
end
data_science = Program.find_by(name: "Data Science")
data_science.courses.create!(name: "Python")
design = Program.find_by(name: "Design")
design.courses.create!(name: "User Interface Design")
front_end = Program.find_by(name: "Front-End Engineering")
front_end.courses.create!(name: "JavaScript and MVC Frameworks")
mobile = Program.find_by(name: "Mobile Engineering")
mobile.courses.create!(name: "Objective-C, Swift and iOS SDK")