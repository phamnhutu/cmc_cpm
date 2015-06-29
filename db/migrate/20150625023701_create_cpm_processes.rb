class CreateCpmProcesses < ActiveRecord::Migration
  def change
    create_table :cpm_processes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
