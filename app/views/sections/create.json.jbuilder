json.array!(@sections) do |section|
  json.extract! section, :_id, :secid, :time, :days, :location, :date_range, :max_students
  json.name section.name
  json.professor_id section.professor._id
  json.course_id section.course._id
  json.student_ids section.students, :_id
  json.url section_url(section, format: :json)
end
