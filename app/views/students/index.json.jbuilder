json.array!(@students) do |student|
  json.extract! student, :name
end