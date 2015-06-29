class CreateJoinTableProjectUser < ActiveRecord::Migration
  def change
    create_join_table :cpm_projects, :cpm_users do |t|
      # t.index [:cpm_project_id, :cpm_user_id]
      # t.index [:cpm_user_id, :cpm_project_id]
    end
  end
end
