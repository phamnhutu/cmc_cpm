class CreateCpmIssues < ActiveRecord::Migration
  def change
    create_table :cpm_issues do |t|
      t.integer :cpm_user_id
      t.integer :cpm_project_id
      t.integer :man_hour
      t.string :name
      t.integer :assigned_to
      t.string :cpm_type
      t.string :cpm_status
      t.integer :cpm_process_id
      t.integer :cpm_priority_id
      t.datetime :deadline
      t.text :description

      t.timestamps null: false
    end
  end
end
