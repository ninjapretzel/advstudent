class Course
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #Course subject Ex. CS
  field :subject, type: String
  
  #Course id Ex. 4260
  field :courseid, type: String
  
  #Course name Ex. Software Engineering Practices
  field :name, type: String
  
  #Course description Ex. 
  field :description, type: String
  
  
  has_many :sections
  
  validates_presence_of :subject
  validates_presence_of :courseid
  validates_presence_of :name
  validates_presence_of :description
  
  validates_uniqueness_of :courseid
  
  index({courseid: 1}, {unique: true, drop_dups: true})
  index({subject: 1})
  
  
end
