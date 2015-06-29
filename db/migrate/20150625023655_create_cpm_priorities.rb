class CreateCpmPriorities < ActiveRecord::Migration
  def change
    create_table :cpm_priorities do |t|
      t.string :name
      t.string :color

      t.timestamps null: false
    end
  end
end
