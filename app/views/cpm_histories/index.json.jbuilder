json.array!(@cpm_histories) do |cpm_history|
  json.extract! cpm_history, :id, :cpm_user_id, :name, :cpm_project_id, :cpm_task_id, :cpm_issue_id
  json.url cpm_history_url(cpm_history, format: :json)
end
