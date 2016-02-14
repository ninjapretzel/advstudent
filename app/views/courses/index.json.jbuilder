json.array!(@courses) do |course|
  json.extract! course, :_id, :courseid, :subject, :name
  json.section_ids course.sections, :_id
  json.url course_url(course, format: :json)
end
