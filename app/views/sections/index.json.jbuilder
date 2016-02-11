json.array!(@sections) do |section|
  json.extract! section, :id, :secid, :time, :days, :location, :date_range, :max_students
  json.url section_url(section, format: :json)
end
