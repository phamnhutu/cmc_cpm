class CpmTask < ActiveRecord::Base
  belongs_to :cpm_project
  belongs_to :cpm_user
  belongs_to :cpm_process
  belongs_to :cpm_priority
  has_many :cpm_comments
end
