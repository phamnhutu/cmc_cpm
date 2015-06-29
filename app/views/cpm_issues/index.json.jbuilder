json.array!(@cpm_issues) do |cpm_issue|
  json.extract! cpm_issue, :id, :cpm_user_id, :cpm_project_id, :man_hour, :name, :assigned_to, :cpm_type, :cpm_status, :cpm_process_id, :cpm_priority_id, :deadline, :description
  json.url cpm_issue_url(cpm_issue, format: :json)
end
