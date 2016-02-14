json.array!(@students) do |student|
  json.extract! student, :_id, :name, :studentid
  json.url student_url(student, format: :json)
  json.section_ids student.sections, :_id
  json.professor_ids student.sections, :professor_id
end
