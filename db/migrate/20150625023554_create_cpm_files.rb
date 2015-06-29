class CreateCpmFiles < ActiveRecord::Migration
  def change
    create_table :cpm_files do |t|
      t.integer :cpm_user_id
      t.integer :cpm_task_id
      t.integer :cpm_issue_id
      t.integer :cpm_comment_id
      t.string :file_path

      t.timestamps null: false
    end
  end
end
