class CpmProject < ActiveRecord::Base
  has_and_belongs_to_many :cpm_users, through: :cpm_users
  has_many :cpm_histories
  has_many :cpm_comments
  has_many :cpm_tasks
  has_many :cpm_issues
  accepts_nested_attributes_for :cpm_users

  attr_accessible :name, :cpm_user_id, :start_date, :end_date
  validates :name, presence: true
  attr_accessor :id

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end
