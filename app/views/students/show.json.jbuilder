json.extract! @student, :id, :name, :studentid
json.section_ids student.sections, :_id
json.professor_ids student.sections, :professor_id
json.url student_url(student, format: :json)
end