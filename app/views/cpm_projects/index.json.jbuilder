json.array!(@cpm_projects) do |cpm_project|
  json.extract! cpm_project, :id, :cpm_user_id, :name, :start_date, :end_date, :status
  json.url cpm_project_url(cpm_project, format: :json)
end
