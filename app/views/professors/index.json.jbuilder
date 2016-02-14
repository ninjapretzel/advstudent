json.array!(@professors) do |professor|
  json.extract! professor, :_id, :profid, :name, :department
  json.section_ids professor.sections, :_id
  json.student_ids professor.students, :_id
  json.url professor_url(professor, format: :json)
end
