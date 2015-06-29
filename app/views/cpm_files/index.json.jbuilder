json.array!(@cpm_files) do |cpm_file|
  json.extract! cpm_file, :id, :cpm_user_id, :cpm_task_id, :cpm_issue_id, :cpm_comment_id, :file_path
  json.url cpm_file_url(cpm_file, format: :json)
end
