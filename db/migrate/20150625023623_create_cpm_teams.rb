class CreateCpmTeams < ActiveRecord::Migration
  def change
    create_table :cpm_teams do |t|
      t.string :name
      t.integer :status

      t.timestamps null: false
    end
  end
end
