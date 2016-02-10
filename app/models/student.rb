class Student
  include Mongoid::Document
  include Mongoid::Timestamps
  
  #student id number
  field :studentid, type: String 
  
  #student's name
  field :name, type: String
  
  has_and_belongs_to_many :sections
  has_and_belongs_to_many :professors
  
  validates_uniqueness_of :name
  validates_uniqueness_of :studentid
  
end
