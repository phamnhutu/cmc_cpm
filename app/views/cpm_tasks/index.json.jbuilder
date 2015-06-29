json.array!(@cpm_tasks) do |cpm_task|
  json.extract! cpm_task, :id, :cpm_user_id, :cpm_project_id, :name, :assigned_to, :deadline, :cpm_process_id, :cpm_priority_id, :man_hour
  json.url cpm_task_url(cpm_task, format: :json)
end
