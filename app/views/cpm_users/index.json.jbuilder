json.array!(@cpm_users) do |cpm_user|
  json.extract! cpm_user, :id, :first_name, :last_name, :permit, :username, :email, :pasword_digest, :remember_digest, :activation_digest, :gender, :phone_number, :address, :facebook_url, :your_story, :status, :cpm_team_id
  json.url cpm_user_url(cpm_user, format: :json)
end
