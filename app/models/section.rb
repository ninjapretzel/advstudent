class Section
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #Section id Ex. 30222
  field :secid, type: String
  
  #Meeting time as string Ex. 10:00am - 2:00pm
  field :time, type: String
  
  #Meeting Days of Week as string Ex. MW
  field :days, type: String
  
  #Meeting location as string Ex. Sci 2011
  field :location, type: String
  #Range of class dates as string Ex. Jan 19 2016 - May 14 2016
  field :date_range, type: String
  
  #Maximum number of students that can enroll in this class
  field :max_students, type: Integer
  
  def name 
	course.subject + " " + course.courseid + " - " + secid
  end
  
  
  #Course that holds class/department information
  belongs_to :course
  
  #Professor of course
  belongs_to :professor
  
  has_and_belongs_to_many :students
  
  
  validates_presence_of :secid
  validates_presence_of :time
  validates_presence_of :days
  
  validates_presence_of :location
  validates_presence_of :date_range
  validates_presence_of :max_students
  
  validates_presence_of :course
  validates_presence_of :professor
  
  
  
  index({secid: 1}, {unique: true, drop_dups: true})
  
  
  
end
