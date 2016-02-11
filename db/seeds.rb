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

Student.new(name: 'Kekit Kekus', studentid: '90012341248').save
Student.new(name: 'Hugh Jass', studentid: '90012345678').save
Student.new(name: 'Bob Saget', studentid: '90011345678').save

Course.new(subject: 'MTH', courseid: '0001', name: 'Kindergarten Math', description: 'Really, now?').save
Course.new(subject: 'MTH', courseid: '0005', name: 'First Grade Math', description: 'Slowly getting there, eh?').save
Course.new(subject: 'CS', courseid: '0010', name: 'Computer Science 1', description: 'How to computer').save
Course.new(subject: 'CS', courseid: '0020', name: 'Computer Science 2', description: 'Computer better').save
Course.new(subject: 'CS', courseid: '0030', name: 'Computer Science 3', description: 'Become an official hacker').save

Professor.new(profid: '1231', name: 'Monty Python', department: 'MTH').save
Professor.new(profid: '1211', name: 'Bobby Bobberton', department: 'MTH').save
Professor.new(profid: '3112', name: 'Dixon Butz', department: 'CS').save
Professor.new(profid: '3212', name: 'Heywood Japhucker', department: 'CS').save


