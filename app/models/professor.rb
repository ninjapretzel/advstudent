class Professor
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :id, type: String
  
  has_many :sections
  has_and_belongs_to_many :students
end

