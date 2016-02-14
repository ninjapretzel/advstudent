class Student
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #student's name
  field :name, type: String
  
  #student id number
  field :studentid, type: String 
  
  
  has_and_belongs_to_many :sections
  #has_and_belongs_to_many :professors
  def professors
	a = Array.new
	
	sections.each do |section|
		section.professors.each do |prof|
			a.push prof._id unless a.include? prof._id
		end
	end
	
	a
  end
  
  validates_presence_of :name
  validates_presence_of :studentid
  
  validates_uniqueness_of :name
  validates_uniqueness_of :studentid
  
  index({name: 1}, {unique: true, drop_dups: true})
  index({studentid: 1}, {unique: true, drop_dups: true})
  
end
