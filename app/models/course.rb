class Course
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #Course subject Ex. CS
  field :subject, type: String
  
  #Course id Ex. 4260
  field :id, type: String
  
  #Course name Ex. Software Engineering Practices
  field :name, type: String
  
  #Course description Ex. 
  field :description, type: String
  
  
  has_many :sections
  
  
end
