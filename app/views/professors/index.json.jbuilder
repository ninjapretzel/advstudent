json.array!(@professors) do |professor|
  json.extract! professor, :id
  json.url professor_url(professor, format: :json)
end
