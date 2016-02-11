json.array!(@courses) do |course|
  json.extract! course, :id, :courseid, :subject, :name
  json.url course_url(course, format: :json)
end
