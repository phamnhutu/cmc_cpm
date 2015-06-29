json.array!(@cpm_teams) do |cpm_team|
  json.extract! cpm_team, :id, :name, :status
  json.url cpm_team_url(cpm_team, format: :json)
end
