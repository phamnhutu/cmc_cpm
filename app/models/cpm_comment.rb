class CpmComment < ActiveRecord::Base
  belongs_to :cpm_project
  belongs_to :cpm_task
  belongs_to :cpm_user
  belongs_to :cpm_issue
  belongs_to :cpm_file
end
