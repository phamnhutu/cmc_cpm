class CreateCpmHistories < ActiveRecord::Migration
  def change
    create_table :cpm_histories do |t|
      t.integer :cpm_user_id
      t.string :name
      t.integer :cpm_project_id
      t.integer :cpm_task_id
      t.integer :cpm_issue_id

      t.timestamps null: false
    end
  end
end
