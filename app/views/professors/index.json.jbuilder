json.array!(@professors) do |professor|
  json.extract! professor, :id, :profid, :name, :department
  json.url professor_url(professor, format: :json)
end
