json.array!(@courses) do |course|
  json.extract! course, :courseid, :subject, :name
end
