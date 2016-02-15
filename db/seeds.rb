# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

db = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'advstudent_development')

db[:students].drop
db[:courses].drop
db[:professors].drop
db[:sections].drop

students = Array.new
courses = Array.new
profs = Array.new
sections = Array.new

students.push Student.new(name: 'Kekit Kekus', studentid: '90012341248')
students.push Student.new(name: 'Hugh Jass', studentid: '90012345678')
students.push Student.new(name: 'George Lucas', studentid: '90011342678')
students.push Student.new(name: 'Bob Saget', studentid: '90011345678')
students.push Student.new(name: 'Ayy Lmao', studentid: '12312431234')
students.push Student.new(name: 'Ayyyy Lmao', studentid: '1312312333333')
students.push Student.new(name: 'Ayyyy Test Lmao', studentid: '111222333')
students.push Student.new(name: 'Ayyyy Another Test Lmao', studentid: '1241245')


courses.push Course.new(subject: 'MTH', courseid: '0001', name: 'Kindergarten Math', description: 'Really, now?')
courses.push Course.new(subject: 'MTH', courseid: '0005', name: 'First Grade Math', description: 'Slowly getting there, eh?')
courses.push Course.new(subject: 'CS', courseid: '0010', name: 'Computer Science 1', description: 'How to computer')
courses.push Course.new(subject: 'CS', courseid: '0020', name: 'Computer Science 2', description: 'Computer better')
courses.push Course.new(subject: 'CS', courseid: '0030', name: 'Computer Science 3', description: 'Become an official hacker')


profs.push Professor.new(profid: '1231', name: 'Monty Python', department: 'MTH')
profs.push Professor.new(profid: '1211', name: 'Bobby Bobberton', department: 'MTH')
profs.push Professor.new(profid: '3112', name: 'Dixon Butz', department: 'CS')
profs.push Professor.new(profid: '3212', name: 'Heywood Japhucker', department: 'CS')
profs.push Professor.new(profid: '4444', name: 'Who Where', department: 'CS')

sections.push Section.new(secid: '12312', time: '10am-12pm', days: 'MW', location: 'NC 1230',
				date_range: 'Jan5-May5', max_students: '35', course: courses[0], professor: profs[0])
sections[0].students << students[0]
sections[0].students << students[1]

sections.push Section.new(secid: '12333', time: '2pm-4pm', days: 'TR', location: 'NC 1230',
				date_range: 'Jan5-May5', max_students: '35', course: courses[0], professor: profs[1])
sections[1].students << students[3]
sections[1].students << students[4]
sections[1].students << students[5]

sections.push Section.new(secid: '12345', time: '4pm-6pm', days: 'MW', location: 'SCI 1212',
				date_range: 'Jan5-May5', max_students: '35', course: courses[1], professor: profs[1])
sections[2].students << students[0]
sections[2].students << students[1]
sections[2].students << students[2]

sections.push Section.new(secid: '11223', time: '8am-10am', days: 'TR', location: 'CEN 1232',
				date_range: 'Jan5-May5', max_students: '35', course: courses[3], professor: profs[2])
sections[3].students << students[0]
sections[3].students << students[1]
sections[3].students << students[2]
sections[3].students << students[3]
sections[3].students << students[4]



students.each do |s|
	s.save
end

courses.each do |s|
	s.save
end

profs.each do |s|
	s.save
end

sections.each do |s|
	s.save
end

