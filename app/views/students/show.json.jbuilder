json.extract! @student, :id, :name, :studentid
json.courses @student.sections.each do |section|
	
end