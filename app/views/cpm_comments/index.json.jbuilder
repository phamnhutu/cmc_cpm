json.array!(@cpm_comments) do |cpm_comment|
  json.extract! cpm_comment, :id, :cpm_user_id, :cpm_issue_id, :cpm_task_id, :cpm_project_id, :content, :attachments
  json.url cpm_comment_url(cpm_comment, format: :json)
end
