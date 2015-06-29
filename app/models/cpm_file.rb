class CpmFile < ActiveRecord::Base
  has_many :cpm_tasks
  has_many :cpm_issues
  has_many :cpm_comments
  belongs_to :cpm_user
end
