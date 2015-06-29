class CreateCpmProjects < ActiveRecord::Migration
  def change
    create_table :cpm_projects do |t|
      t.integer :cpm_user_id
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status

      t.timestamps null: false
    end
  end
end
