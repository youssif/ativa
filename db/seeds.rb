# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.destroy_all

projects = [
	'Mother Flocker',
	'Gifanator',
	'ATX Jobs', 
	'Connect2Good',
	'Bring Up',
	'Harsh is the Best'
]

phases = ['onboarding','creative', 'design', 'development', 'implementation']


projects.each do |project|
	Project.create(name: project)
	phases.each do |phase|
		Project.last.phases.create(name: phase)
	end
end