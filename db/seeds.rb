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
Student.create!(first_name: "Lars", last_name: "Smith", course: "iOS", cohort: "fall 2015")
Student.create!(first_name: "Alan", last_name: "Jones", course: "RoR", cohort: "fall 2015")
Student.create!(first_name: "Kate", last_name: "Johnson", course: "iOS", cohort: "summer 2015")