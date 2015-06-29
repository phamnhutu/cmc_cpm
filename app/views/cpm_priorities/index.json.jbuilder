json.array!(@cpm_priorities) do |cpm_priority|
  json.extract! cpm_priority, :id, :name, :color
  json.url cpm_priority_url(cpm_priority, format: :json)
end
