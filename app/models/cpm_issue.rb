class CpmIssue < ActiveRecord::Base
  belongs_to :cpm_project
  has_many :cpm_comments
end
