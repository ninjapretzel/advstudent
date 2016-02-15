class Professor
  include Mongoid::Document
  include Mongoid::Timestamps
  
  
  #Professor identity
  field :profid, type: String
  
  #Professor name
  field :name, type: String
  
  #Professor Department
  field :department, type: String
  
  #Each professor may teach many sections
  has_many :sections
  
  #Each professor is bound to their many students...
  #TBD: make this wrap through their sections
  #has_and_belongs_to_many :students
  def students
	a = Array.new
	
	sections.each do |section|
		section.students.each do |stud|
			b = stud
			a.push b unless a.include? b
		end
	end
	
	a
  end
  
  validates_presence_of :name
  validates_presence_of :profid
  validates_presence_of :department
  
  validates_uniqueness_of :name
  validates_uniqueness_of :profid
  
  index({name: 1}, {unique: true})
  index({profid: 1}, {unique: true})
  
end

