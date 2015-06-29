class CpmUser < ActiveRecord::Base
  has_many :cpm_files
  belongs_to  :cpm_team
end
