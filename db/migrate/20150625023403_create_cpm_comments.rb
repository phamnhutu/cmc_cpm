class CreateCpmComments < ActiveRecord::Migration
  def change
    create_table :cpm_comments do |t|
      t.integer :cpm_user_id
      t.integer :cpm_issue_id
      t.integer :cpm_task_id
      t.integer :cpm_project_id
      t.string :content
      t.string :attachments

      t.timestamps null: false
    end
  end
end
