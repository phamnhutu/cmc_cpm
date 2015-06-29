class CreateCpmUsers < ActiveRecord::Migration
  def change
    create_table :cpm_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :permit
      t.string :username
      t.string :email
      t.string :pasword_digest
      t.string :remember_digest
      t.string :activation_digest
      t.integer :gender
      t.string :phone_number
      t.string :address
      t.string :facebook_url
      t.string :your_story
      t.integer :status
      t.integer :cpm_team_id

      t.timestamps null: false
    end
  end
end
