json.array!(@cpm_processes) do |cpm_process|
  json.extract! cpm_process, :id, :name
  json.url cpm_process_url(cpm_process, format: :json)
end
