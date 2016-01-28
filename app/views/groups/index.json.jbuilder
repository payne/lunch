json.array!(@groups) do |group|
  json.extract! group, :id, :name, :attendance_rate
  json.url group_url(group, format: :json)
end
