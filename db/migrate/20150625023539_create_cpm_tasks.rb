class CreateCpmTasks < ActiveRecord::Migration
  def change
    create_table :cpm_tasks do |t|
      t.integer :cpm_user_id
      t.integer :cpm_project_id
      t.string :name
      t.integer :assigned_to
      t.datetime :deadline
      t.integer :cpm_process_id
      t.integer :cpm_priority_id
      t.string :man_hour

      t.timestamps null: false
    end
  end
end
